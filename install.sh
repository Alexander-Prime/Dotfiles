#!/bin/env bash

R="\e[91m"
G="\e[92m"
W="\e[39m"
D="\e[2m"

if ! which envsubst >/dev/null 2>&1; then
  echo
  echo " Command 'envsubst' not present."
  echo " If you are on Mac OS, try:"
  echo
  echo -e "   ${D}brew link --force gettext${W}"
  echo
  exit 1
fi

echo
echo " Linking files..."
echo

while read LINE; do
  WORD=($LINE)
  FROM=${WORD[0]}
  TO=$(echo ${WORD[1]} | envsubst)

  if ln -s $FROM $TO 2>/dev/null; then
    echo -e "$G   ✓ $FROM → $TO$W"
  else
    echo -e "$R   ✗ $FROM → $TO$W"
  fi
done < ./files.list

echo