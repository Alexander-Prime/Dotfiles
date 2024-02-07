def hx-health [] { hx --health | lines | skip until {|l| $l | str starts-with "Language  "} | to text | detect columns } 
