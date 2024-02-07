module completions {

  # Jujutsu (An experimental VCS)
  export extern jj [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
    --version(-V)             # Print version
  ]

  # Abandon a revision
  export extern "jj abandon" [
    ...revisions: string      # The revision(s) to abandon
    --summary(-s)             # Do not print every abandoned commit on a separate line
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Apply the reverse of a revision on top of another revision
  export extern "jj backout" [
    --revision(-r): string    # The revision to apply the reverse of
    --destination(-d): string # The revision to apply the reverse changes on top of
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Manage branches
  export extern "jj branch" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Create a new branch
  export extern "jj branch create" [
    --revision(-r): string    # The branch's target revision
    ...names: string          # The branches to create
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Delete an existing branch and propagate the deletion to remotes on the next push
  export extern "jj branch delete" [
    ...names: string          # The branches to delete
    --glob: string            # Deprecated. Please prefix the pattern with `glob:` instead
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Forget everything about a branch, including its local and remote targets
  export extern "jj branch forget" [
    ...names: string          # The branches to forget
    --glob: string            # Deprecated. Please prefix the pattern with `glob:` instead
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List branches and their targets
  export extern "jj branch list" [
    --all(-a)                 # Show all tracking and non-tracking remote branches including the ones whose targets are synchronized with the local branches
    --tracked(-t)             # Show remote tracked branches only. Omits local Git-tracking branches by default
    ...names: string          # Show branches whose local name matches
    --revisions(-r): string   # Show branches whose local targets are in the given revisions
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Rename `old` branch name to `new` branch name
  export extern "jj branch rename" [
    old: string               # The old name of the branch
    new: string               # The new name of the branch
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update an existing branch to point to a certain commit
  export extern "jj branch set" [
    --revision(-r): string    # The branch's target revision
    --allow-backwards(-B)     # Allow moving the branch backwards or sideways
    ...names: string          # The branches to update
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Start tracking given remote branches
  export extern "jj branch track" [
    ...names: string          # Remote branches to track
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Stop tracking given remote branches
  export extern "jj branch untrack" [
    ...names: string          # Remote branches to untrack
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj branch help" [
  ]

  # Create a new branch
  export extern "jj branch help create" [
  ]

  # Delete an existing branch and propagate the deletion to remotes on the next push
  export extern "jj branch help delete" [
  ]

  # Forget everything about a branch, including its local and remote targets
  export extern "jj branch help forget" [
  ]

  # List branches and their targets
  export extern "jj branch help list" [
  ]

  # Rename `old` branch name to `new` branch name
  export extern "jj branch help rename" [
  ]

  # Update an existing branch to point to a certain commit
  export extern "jj branch help set" [
  ]

  # Start tracking given remote branches
  export extern "jj branch help track" [
  ]

  # Stop tracking given remote branches
  export extern "jj branch help untrack" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj branch help help" [
  ]

  # Print contents of a file in a revision
  export extern "jj cat" [
    --revision(-r): string    # The revision to get the file contents from
    path: string              # The file to print
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Create a new, empty change and edit it in the working copy
  export extern "jj checkout" [
    revision: string          # The revision to update to
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --message(-m): string     # The change description to use
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  def "nu-complete jj chmod mode" [] {
    [ "n" "x" ]
  }

  # Sets or removes the executable bit for paths in the repo
  export extern "jj chmod" [
    mode: string@"nu-complete jj chmod mode"
    --revision(-r): string    # The revision to update
    ...paths: string          # Paths to change the executable bit for
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update the description and create a new change on top
  export extern "jj commit" [
    --interactive(-i)         # Interactively choose which changes to include in the first commit
    --tool: string            # Specify diff editor to be used (implies --interactive)
    --message(-m): string     # The change description to use (don't open editor)
    ...paths: string          # Put these paths in the first commit
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Manage config options
  export extern "jj config" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List variables set in config file, along with their values
  export extern "jj config list" [
    name?: string             # An optional name of a specific config option to look up
    --include-defaults        # Whether to explicitly include built-in default values in the list
    --include-overridden      # Allow printing overridden values
    --user                    # Target the user-level config
    --repo                    # Target the repo-level config
    --template(-T): string    # Render each variable using the given template
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Get the value of a given config option.
  export extern "jj config get" [
    name: string
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update config file to set the given option to a given value
  export extern "jj config set" [
    name: string
    value: string
    --user                    # Target the user-level config
    --repo                    # Target the repo-level config
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Start an editor on a jj config file
  export extern "jj config edit" [
    --user                    # Target the user-level config
    --repo                    # Target the repo-level config
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print the path to the config file
  export extern "jj config path" [
    --user                    # Target the user-level config
    --repo                    # Target the repo-level config
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj config help" [
  ]

  # List variables set in config file, along with their values
  export extern "jj config help list" [
  ]

  # Get the value of a given config option.
  export extern "jj config help get" [
  ]

  # Update config file to set the given option to a given value
  export extern "jj config help set" [
  ]

  # Start an editor on a jj config file
  export extern "jj config help edit" [
  ]

  # Print the path to the config file
  export extern "jj config help path" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj config help help" [
  ]

  # Low-level commands not intended for users
  export extern "jj debug" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Evaluate revset to full commit IDs
  export extern "jj debug revset" [
    revision: string
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show information about the working copy state
  export extern "jj debug workingcopy" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Parse a template
  export extern "jj debug template" [
    template: string
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show commit index stats
  export extern "jj debug index" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Rebuild commit index
  export extern "jj debug reindex" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  def "nu-complete jj debug operation display" [] {
    [ "operation" "id" "view" "all" ]
  }

  # Show information about an operation and its view
  export extern "jj debug operation" [
    operation?: string
    --display: string@"nu-complete jj debug operation display"
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List the recursive entries of a tree
  export extern "jj debug tree" [
    --revision(-r): string
    ...paths: string
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  export extern "jj debug watchman" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  export extern "jj debug watchman query-clock" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  export extern "jj debug watchman query-changed-files" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  export extern "jj debug watchman reset-clock" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj debug watchman help" [
  ]

  export extern "jj debug watchman help query-clock" [
  ]

  export extern "jj debug watchman help query-changed-files" [
  ]

  export extern "jj debug watchman help reset-clock" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj debug watchman help help" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj debug help" [
  ]

  # Evaluate revset to full commit IDs
  export extern "jj debug help revset" [
  ]

  # Show information about the working copy state
  export extern "jj debug help workingcopy" [
  ]

  # Parse a template
  export extern "jj debug help template" [
  ]

  # Show commit index stats
  export extern "jj debug help index" [
  ]

  # Rebuild commit index
  export extern "jj debug help reindex" [
  ]

  # Show information about an operation and its view
  export extern "jj debug help operation" [
  ]

  # List the recursive entries of a tree
  export extern "jj debug help tree" [
  ]

  export extern "jj debug help watchman" [
  ]

  export extern "jj debug help watchman query-clock" [
  ]

  export extern "jj debug help watchman query-changed-files" [
  ]

  export extern "jj debug help watchman reset-clock" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj debug help help" [
  ]

  # Update the change description or other metadata
  export extern "jj describe" [
    revision?: string         # The revision whose description to edit
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --message(-m): string     # The change description to use (don't open editor)
    --stdin                   # Read the change description from stdin
    --no-edit                 # Don't open an editor
    --reset-author            # Reset the author to the configured user
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Compare file contents between two revisions
  export extern "jj diff" [
    --revision(-r): string    # Show changes in this revision, compared to its parent(s)
    --from: string            # Show changes from this revision
    --to: string              # Show changes to this revision
    ...paths: string          # Restrict the diff to these paths
    --summary(-s)             # For each path, show only whether it was modified, added, or deleted
    --stat                    # Show a histogram of the changes
    --types                   # For each path, show only its type before and after
    --git                     # Show a Git-format diff
    --color-words             # Show a word-level diff with changes indicated only by color
    --tool: string            # Generate diff by external command
    --context: string         # Number of lines of context to show
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Touch up the content changes in a revision with a diff editor
  export extern "jj diffedit" [
    --revision(-r): string    # The revision to touch up. Defaults to @ if neither --to nor --from are specified
    --from: string            # Show changes from this revision. Defaults to @ if --to is specified
    --to: string              # Edit changes in this revision. Defaults to @ if --from is specified
    --tool: string            # Specify diff editor to be used
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Create a new change with the same content as an existing one
  export extern "jj duplicate" [
    ...revisions: string      # The revision(s) to duplicate
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Edit a commit in the working copy
  export extern "jj edit" [
    revision: string          # The commit to edit
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List files in a revision
  export extern "jj files" [
    --revision(-r): string    # The revision to list files in
    ...paths: string          # Only list files matching these prefixes (instead of all files)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Commands for working with the underlying Git repo
  export extern "jj git" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Manage Git remotes
  export extern "jj git remote" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Add a Git remote
  export extern "jj git remote add" [
    remote: string            # The remote's name
    url: string               # The remote's URL
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Remove a Git remote and forget its branches
  export extern "jj git remote remove" [
    remote: string            # The remote's name
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Rename a Git remote
  export extern "jj git remote rename" [
    old: string               # The name of an existing remote
    new: string               # The desired name for `old`
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List Git remotes
  export extern "jj git remote list" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj git remote help" [
  ]

  # Add a Git remote
  export extern "jj git remote help add" [
  ]

  # Remove a Git remote and forget its branches
  export extern "jj git remote help remove" [
  ]

  # Rename a Git remote
  export extern "jj git remote help rename" [
  ]

  # List Git remotes
  export extern "jj git remote help list" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj git remote help help" [
  ]

  # Create a new Git backed repo
  export extern "jj git init" [
    destination?: string      # The destination directory where the `jj` repo will be created. If the directory does not exist, it will be created. If no directory is diven, the current directory is used
    --colocate                # Specifies that the `jj` repo should also be a valid `git` repo, allowing the use of both `jj` and `git` commands in the same directory
    --git-repo: string        # Specifies a path to an **existing** git repository to be used as the backing git repo for the newly created `jj` repo
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Fetch from a Git remote
  export extern "jj git fetch" [
    --branch(-b): string      # Fetch only some of the branches
    --remote: string          # The remote to fetch from (only named remotes are supported, can be repeated)
    --all-remotes             # Fetch from all remotes
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Create a new repo backed by a clone of a Git repo
  export extern "jj git clone" [
    source: string            # URL or path of the Git repo to clone
    destination?: string      # The directory to write the Jujutsu repo to
    --colocate                # Whether or not to colocate the Jujutsu repo with the git repo
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Push to a Git remote
  export extern "jj git push" [
    --remote: string          # The remote to push to (only named remotes are supported)
    --branch(-b): string      # Push only this branch, or branches matching a pattern (can be repeated)
    --all                     # Push all branches (including deleted branches)
    --tracked                 # Push all tracked branches (including deleted branches)
    --deleted                 # Push all deleted branches
    --revisions(-r): string   # Push branches pointing to these commits (can be repeated)
    --change(-c): string      # Push this commit by creating a branch based on its change ID (can be repeated)
    --dry-run                 # Only display what will change on the remote
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update repo with changes made in the underlying Git repo
  export extern "jj git import" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update the underlying Git repo with changes made in the repo
  export extern "jj git export" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # FOR INTERNAL USE ONLY Interact with git submodules
  export extern "jj git submodule" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print the relevant contents from .gitmodules. For debugging purposes only
  export extern "jj git submodule print-gitmodules" [
    --revisions(-r): string   # Read .gitmodules from the given revision
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj git submodule help" [
  ]

  # Print the relevant contents from .gitmodules. For debugging purposes only
  export extern "jj git submodule help print-gitmodules" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj git submodule help help" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj git help" [
  ]

  # Manage Git remotes
  export extern "jj git help remote" [
  ]

  # Add a Git remote
  export extern "jj git help remote add" [
  ]

  # Remove a Git remote and forget its branches
  export extern "jj git help remote remove" [
  ]

  # Rename a Git remote
  export extern "jj git help remote rename" [
  ]

  # List Git remotes
  export extern "jj git help remote list" [
  ]

  # Create a new Git backed repo
  export extern "jj git help init" [
  ]

  # Fetch from a Git remote
  export extern "jj git help fetch" [
  ]

  # Create a new repo backed by a clone of a Git repo
  export extern "jj git help clone" [
  ]

  # Push to a Git remote
  export extern "jj git help push" [
  ]

  # Update repo with changes made in the underlying Git repo
  export extern "jj git help import" [
  ]

  # Update the underlying Git repo with changes made in the repo
  export extern "jj git help export" [
  ]

  # FOR INTERNAL USE ONLY Interact with git submodules
  export extern "jj git help submodule" [
  ]

  # Print the relevant contents from .gitmodules. For debugging purposes only
  export extern "jj git help submodule print-gitmodules" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj git help help" [
  ]

  # Create a new repo in the given directory
  export extern "jj init" [
    destination?: string      # The destination directory
    --git                     # DEPRECATED: Use `jj git init` Use the Git backend, creating a jj repo backed by a Git repo
    --git-repo: string        # DEPRECATED: Use `jj git init` Path to a git repo the jj repo will be backed by
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Compare the changes of two commits
  export extern "jj interdiff" [
    --from: string            # Show changes from this revision
    --to: string              # Show changes to this revision
    ...paths: string          # Restrict the diff to these paths
    --summary(-s)             # For each path, show only whether it was modified, added, or deleted
    --stat                    # Show a histogram of the changes
    --types                   # For each path, show only its type before and after
    --git                     # Show a Git-format diff
    --color-words             # Show a word-level diff with changes indicated only by color
    --tool: string            # Generate diff by external command
    --context: string         # Number of lines of context to show
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show commit history
  export extern "jj log" [
    --revisions(-r): string   # Which revisions to show. Defaults to the `revsets.log` setting, or `@ | ancestors(immutable_heads().., 2) | trunk()` if it is not set
    ...paths: string          # Show commits modifying the given paths
    --reversed                # Show revisions in the opposite order (older revisions first)
    --limit(-l): string       # Limit number of revisions to show
    --no-graph                # Don't show the graph, show a flat list of revisions
    --template(-T): string    # Render each revision using the given template
    --patch(-p)               # Show patch
    --summary(-s)             # For each path, show only whether it was modified, added, or deleted
    --stat                    # Show a histogram of the changes
    --types                   # For each path, show only its type before and after
    --git                     # Show a Git-format diff
    --color-words             # Show a word-level diff with changes indicated only by color
    --tool: string            # Generate diff by external command
    --context: string         # Number of lines of context to show
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Merge work from multiple branches
  export extern "jj merge" [
    ...revisions: string      # Parent(s) of the new change
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --message(-m): string     # The change description to use
    --allow-large-revsets(-L) # Deprecated. Please prefix the revset with `all:` instead
    --no-edit                 # Do not edit the newly created change
    --edit                    # No-op flag to pair with --no-edit
    --insert-after(-A)        # Insert the new change between the target commit(s) and their children
    --after                   # Insert the new change between the target commit(s) and their children
    --insert-before(-B)       # Insert the new change between the target commit(s) and their parents
    --before                  # Insert the new change between the target commit(s) and their parents
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Move changes from one revision into another
  export extern "jj move" [
    --from(-f): string        # Move part of this change into the destination
    --to(-t): string          # Move part of the source into this change
    --interactive(-i)         # Interactively choose which parts to move
    --tool: string            # Specify diff editor to be used (implies --interactive)
    ...paths: string          # Move only changes to these paths (instead of all paths)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Create a new, empty change and (by default) edit it in the working copy
  export extern "jj new" [
    ...revisions: string      # Parent(s) of the new change
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --message(-m): string     # The change description to use
    --allow-large-revsets(-L) # Deprecated. Please prefix the revset with `all:` instead
    --no-edit                 # Do not edit the newly created change
    --edit                    # No-op flag to pair with --no-edit
    --insert-after(-A)        # Insert the new change between the target commit(s) and their children
    --after                   # Insert the new change between the target commit(s) and their children
    --insert-before(-B)       # Insert the new change between the target commit(s) and their parents
    --before                  # Insert the new change between the target commit(s) and their parents
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Move the current working copy commit to the next child revision in the repository.
  export extern "jj next" [
    amount?: string           # How many revisions to move forward. By default advances to the next child
    --edit                    # Instead of creating a new working-copy commit on top of the target commit (like `jj new`), edit the target commit directly (like `jj edit`)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show how a change has evolved
  export extern "jj obslog" [
    --revision(-r): string
    --limit(-l): string       # Limit number of revisions to show
    --no-graph                # Don't show the graph, show a flat list of revisions
    --template(-T): string    # Render each revision using the given template
    --patch(-p)               # Show patch compared to the previous version of this change
    --summary(-s)             # For each path, show only whether it was modified, added, or deleted
    --stat                    # Show a histogram of the changes
    --types                   # For each path, show only its type before and after
    --git                     # Show a Git-format diff
    --color-words             # Show a word-level diff with changes indicated only by color
    --tool: string            # Generate diff by external command
    --context: string         # Number of lines of context to show
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Commands for working with the operation log
  export extern "jj operation" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Abandon operation history
  export extern "jj operation abandon" [
    operation: string         # The operation or operation range to abandon
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show the operation log
  export extern "jj operation log" [
    --limit(-l): string       # Limit number of operations to show
    --no-graph                # Don't show the graph, show a flat list of operations
    --template(-T): string    # Render each operation using the given template
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  def "nu-complete jj operation undo what" [] {
    [ "repo" "remote-tracking" ]
  }

  # Create a new operation that undoes an earlier operation
  export extern "jj operation undo" [
    operation?: string        # The operation to undo
    --what: string@"nu-complete jj operation undo what" # What portions of the local state to restore (can be repeated)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  def "nu-complete jj operation restore what" [] {
    [ "repo" "remote-tracking" ]
  }

  # Create a new operation that restores the repo to an earlier state
  export extern "jj operation restore" [
    operation: string         # The operation to restore to
    --what: string@"nu-complete jj operation restore what" # What portions of the local state to restore (can be repeated)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj operation help" [
  ]

  # Abandon operation history
  export extern "jj operation help abandon" [
  ]

  # Show the operation log
  export extern "jj operation help log" [
  ]

  # Create a new operation that undoes an earlier operation
  export extern "jj operation help undo" [
  ]

  # Create a new operation that restores the repo to an earlier state
  export extern "jj operation help restore" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj operation help help" [
  ]

  # Move the working copy commit to the parent of the current revision.
  export extern "jj prev" [
    amount?: string           # How many revisions to move backward. By default moves to the parent
    --edit                    # Edit the parent directly, instead of moving the working-copy commit
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Move revisions to different parent(s)
  export extern "jj rebase" [
    --branch(-b): string      # Rebase the whole branch relative to destination's ancestors (can be repeated)
    --source(-s): string      # Rebase specified revision(s) together their tree of descendants (can be repeated)
    --revision(-r): string    # Rebase only this revision, rebasing descendants onto this revision's parent(s)
    --destination(-d): string # The revision(s) to rebase onto (can be repeated to create a merge commit)
    --skip-empty              # If true, when rebasing would produce an empty commit, the commit is abandoned. It will not be abandoned if it was already empty before the rebase. Will never skip merge commits with multiple non-empty parents
    --allow-large-revsets(-L) # Deprecated. Please prefix the revset with `all:` instead
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Resolve a conflicted file with an external merge tool
  export extern "jj resolve" [
    --revision(-r): string
    --list(-l)                # Instead of resolving one conflict, list all the conflicts
    --quiet(-q)               # Do not print the list of remaining conflicts (if any) after resolving a conflict
    --tool: string            # Specify 3-way merge tool to be used
    ...paths: string          # Restrict to these paths when searching for a conflict to resolve. We will attempt to resolve the first conflict we can find. You can use the `--list` argument to find paths to use here
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Restore paths from another revision
  export extern "jj restore" [
    ...paths: string          # Restore only these paths (instead of all paths)
    --from: string            # Revision to restore from (source)
    --to: string              # Revision to restore into (destination)
    --changes-in(-c): string  # Undo the changes in a revision as compared to the merge of its parents
    --revision(-r): string    # Prints an error. DO NOT USE
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # A dummy command that accepts any arguments
  export extern "jj revert" [
    ..._args: string
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show the current workspace root directory
  export extern "jj root" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Run a command across a set of revisions.
  export extern "jj run" [
    shell_command: string     # The command to run across all selected revisions
    --revisions(-r): string   # The revisions to change
    -x                        # A no-op option to match the interface of `git rebase -x`
    --jobs(-j): string        # How many processes should run in parallel, uses by default all cores
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show commit description and changes in a revision
  export extern "jj show" [
    revision?: string         # Show changes in this revision, compared to its parent(s)
    -r                        # Ignored (but lets you pass `-r` for consistency with other commands)
    --template(-T): string    # Render a revision using the given template
    --summary(-s)             # For each path, show only whether it was modified, added, or deleted
    --stat                    # Show a histogram of the changes
    --types                   # For each path, show only its type before and after
    --git                     # Show a Git-format diff
    --color-words             # Show a word-level diff with changes indicated only by color
    --tool: string            # Generate diff by external command
    --context: string         # Number of lines of context to show
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Manage which paths from the working-copy commit are present in the working copy
  export extern "jj sparse" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List the patterns that are currently present in the working copy
  export extern "jj sparse list" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update the patterns that are present in the working copy
  export extern "jj sparse set" [
    --add: string             # Patterns to add to the working copy
    --remove: string          # Patterns to remove from the working copy
    --clear                   # Include no files in the working copy (combine with --add)
    --edit                    # Edit patterns with $EDITOR
    --reset                   # Include all files in the working copy
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj sparse help" [
  ]

  # List the patterns that are currently present in the working copy
  export extern "jj sparse help list" [
  ]

  # Update the patterns that are present in the working copy
  export extern "jj sparse help set" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj sparse help help" [
  ]

  # Split a revision in two
  export extern "jj split" [
    --interactive(-i)         # Interactively choose which parts to split. This is the default if no paths are provided
    --tool: string            # Specify diff editor to be used (implies --interactive)
    --revision(-r): string    # The revision to split
    ...paths: string          # Put these paths in the first commit
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Move changes from a revision into its parent
  export extern "jj squash" [
    --revision(-r): string
    --message(-m): string     # The description to use for squashed revision (don't open editor)
    --interactive(-i)         # Interactively choose which parts to squash
    --tool: string            # Specify diff editor to be used (implies --interactive)
    ...paths: string          # Move only changes to these paths (instead of all paths)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show high-level repo status
  export extern "jj status" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Manage tags
  export extern "jj tag" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List tags
  export extern "jj tag list" [
    ...names: string          # Show tags whose local name matches
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj tag help" [
  ]

  # List tags
  export extern "jj tag help list" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj tag help help" [
  ]

  # Infrequently used commands such as for generating shell completions
  export extern "jj util" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  def "nu-complete jj util completion shell" [] {
    [ "bash" "elvish" "fish" "nushell" "power-shell" "zsh" ]
  }

  # Print a command-line-completion script
  export extern "jj util completion" [
    shell?: string@"nu-complete jj util completion shell"
    --bash                    # Deprecated. Use the SHELL positional argument instead
    --fish                    # Deprecated. Use the SHELL positional argument instead
    --zsh                     # Deprecated. Use the SHELL positional argument instead
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Run backend-dependent garbage collection
  export extern "jj util gc" [
    --expire: string          # Time threshold
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print a ROFF (manpage)
  export extern "jj util mangen" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print the CLI help for all subcommands in Markdown
  export extern "jj util markdown-help" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print the JSON schema for the jj TOML config format
  export extern "jj util config-schema" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj util help" [
  ]

  # Print a command-line-completion script
  export extern "jj util help completion" [
  ]

  # Run backend-dependent garbage collection
  export extern "jj util help gc" [
  ]

  # Print a ROFF (manpage)
  export extern "jj util help mangen" [
  ]

  # Print the CLI help for all subcommands in Markdown
  export extern "jj util help markdown-help" [
  ]

  # Print the JSON schema for the jj TOML config format
  export extern "jj util help config-schema" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj util help help" [
  ]

  def "nu-complete jj undo what" [] {
    [ "repo" "remote-tracking" ]
  }

  # Undo an operation (shortcut for `jj op undo`)
  export extern "jj undo" [
    operation?: string        # The operation to undo
    --what: string@"nu-complete jj undo what" # What portions of the local state to restore (can be repeated)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Move changes from a revision's parent into the revision
  export extern "jj unsquash" [
    --revision(-r): string
    --interactive(-i)         # Interactively choose which parts to unsquash
    --tool: string            # Specify diff editor to be used (implies --interactive)
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Stop tracking specified paths in the working copy
  export extern "jj untrack" [
    ...paths: string          # Paths to untrack. They must already be ignored
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Display version information
  export extern "jj version" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Commands for working with workspaces
  export extern "jj workspace" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Add a workspace
  export extern "jj workspace add" [
    destination: string       # Where to create the new workspace
    --name: string            # A name for the workspace
    --revision(-r): string    # A list of parent revisions for the working-copy commit of the newly created workspace. You may specify nothing, or any number of parents
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Stop tracking a workspace's working-copy commit in the repo
  export extern "jj workspace forget" [
    ...workspaces: string     # Names of the workspaces to forget. By default, forgets only the current workspace
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # List workspaces
  export extern "jj workspace list" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Show the current workspace root directory
  export extern "jj workspace root" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Update a workspace that has become stale
  export extern "jj workspace update-stale" [
    --repository(-R): string  # Path to repository to operate on
    --ignore-working-copy     # Don't snapshot the working copy, and don't update it
    --at-operation: string    # Operation to load the repo at
    --at-op: string           # Operation to load the repo at
    --debug                   # Enable debug logging
    --color: string           # When to colorize output (always, never, auto)
    --no-pager                # Disable the pager
    --config-toml: string     # Additional configuration options (can be repeated)
    --help(-h)                # Print help (see more with '--help')
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj workspace help" [
  ]

  # Add a workspace
  export extern "jj workspace help add" [
  ]

  # Stop tracking a workspace's working-copy commit in the repo
  export extern "jj workspace help forget" [
  ]

  # List workspaces
  export extern "jj workspace help list" [
  ]

  # Show the current workspace root directory
  export extern "jj workspace help root" [
  ]

  # Update a workspace that has become stale
  export extern "jj workspace help update-stale" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj workspace help help" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj help" [
  ]

  # Abandon a revision
  export extern "jj help abandon" [
  ]

  # Apply the reverse of a revision on top of another revision
  export extern "jj help backout" [
  ]

  # Manage branches
  export extern "jj help branch" [
  ]

  # Create a new branch
  export extern "jj help branch create" [
  ]

  # Delete an existing branch and propagate the deletion to remotes on the next push
  export extern "jj help branch delete" [
  ]

  # Forget everything about a branch, including its local and remote targets
  export extern "jj help branch forget" [
  ]

  # List branches and their targets
  export extern "jj help branch list" [
  ]

  # Rename `old` branch name to `new` branch name
  export extern "jj help branch rename" [
  ]

  # Update an existing branch to point to a certain commit
  export extern "jj help branch set" [
  ]

  # Start tracking given remote branches
  export extern "jj help branch track" [
  ]

  # Stop tracking given remote branches
  export extern "jj help branch untrack" [
  ]

  # Print contents of a file in a revision
  export extern "jj help cat" [
  ]

  # Create a new, empty change and edit it in the working copy
  export extern "jj help checkout" [
  ]

  # Sets or removes the executable bit for paths in the repo
  export extern "jj help chmod" [
  ]

  # Update the description and create a new change on top
  export extern "jj help commit" [
  ]

  # Manage config options
  export extern "jj help config" [
  ]

  # List variables set in config file, along with their values
  export extern "jj help config list" [
  ]

  # Get the value of a given config option.
  export extern "jj help config get" [
  ]

  # Update config file to set the given option to a given value
  export extern "jj help config set" [
  ]

  # Start an editor on a jj config file
  export extern "jj help config edit" [
  ]

  # Print the path to the config file
  export extern "jj help config path" [
  ]

  # Low-level commands not intended for users
  export extern "jj help debug" [
  ]

  # Evaluate revset to full commit IDs
  export extern "jj help debug revset" [
  ]

  # Show information about the working copy state
  export extern "jj help debug workingcopy" [
  ]

  # Parse a template
  export extern "jj help debug template" [
  ]

  # Show commit index stats
  export extern "jj help debug index" [
  ]

  # Rebuild commit index
  export extern "jj help debug reindex" [
  ]

  # Show information about an operation and its view
  export extern "jj help debug operation" [
  ]

  # List the recursive entries of a tree
  export extern "jj help debug tree" [
  ]

  export extern "jj help debug watchman" [
  ]

  export extern "jj help debug watchman query-clock" [
  ]

  export extern "jj help debug watchman query-changed-files" [
  ]

  export extern "jj help debug watchman reset-clock" [
  ]

  # Update the change description or other metadata
  export extern "jj help describe" [
  ]

  # Compare file contents between two revisions
  export extern "jj help diff" [
  ]

  # Touch up the content changes in a revision with a diff editor
  export extern "jj help diffedit" [
  ]

  # Create a new change with the same content as an existing one
  export extern "jj help duplicate" [
  ]

  # Edit a commit in the working copy
  export extern "jj help edit" [
  ]

  # List files in a revision
  export extern "jj help files" [
  ]

  # Commands for working with the underlying Git repo
  export extern "jj help git" [
  ]

  # Manage Git remotes
  export extern "jj help git remote" [
  ]

  # Add a Git remote
  export extern "jj help git remote add" [
  ]

  # Remove a Git remote and forget its branches
  export extern "jj help git remote remove" [
  ]

  # Rename a Git remote
  export extern "jj help git remote rename" [
  ]

  # List Git remotes
  export extern "jj help git remote list" [
  ]

  # Create a new Git backed repo
  export extern "jj help git init" [
  ]

  # Fetch from a Git remote
  export extern "jj help git fetch" [
  ]

  # Create a new repo backed by a clone of a Git repo
  export extern "jj help git clone" [
  ]

  # Push to a Git remote
  export extern "jj help git push" [
  ]

  # Update repo with changes made in the underlying Git repo
  export extern "jj help git import" [
  ]

  # Update the underlying Git repo with changes made in the repo
  export extern "jj help git export" [
  ]

  # FOR INTERNAL USE ONLY Interact with git submodules
  export extern "jj help git submodule" [
  ]

  # Print the relevant contents from .gitmodules. For debugging purposes only
  export extern "jj help git submodule print-gitmodules" [
  ]

  # Create a new repo in the given directory
  export extern "jj help init" [
  ]

  # Compare the changes of two commits
  export extern "jj help interdiff" [
  ]

  # Show commit history
  export extern "jj help log" [
  ]

  # Merge work from multiple branches
  export extern "jj help merge" [
  ]

  # Move changes from one revision into another
  export extern "jj help move" [
  ]

  # Create a new, empty change and (by default) edit it in the working copy
  export extern "jj help new" [
  ]

  # Move the current working copy commit to the next child revision in the repository.
  export extern "jj help next" [
  ]

  # Show how a change has evolved
  export extern "jj help obslog" [
  ]

  # Commands for working with the operation log
  export extern "jj help operation" [
  ]

  # Abandon operation history
  export extern "jj help operation abandon" [
  ]

  # Show the operation log
  export extern "jj help operation log" [
  ]

  # Create a new operation that undoes an earlier operation
  export extern "jj help operation undo" [
  ]

  # Create a new operation that restores the repo to an earlier state
  export extern "jj help operation restore" [
  ]

  # Move the working copy commit to the parent of the current revision.
  export extern "jj help prev" [
  ]

  # Move revisions to different parent(s)
  export extern "jj help rebase" [
  ]

  # Resolve a conflicted file with an external merge tool
  export extern "jj help resolve" [
  ]

  # Restore paths from another revision
  export extern "jj help restore" [
  ]

  # A dummy command that accepts any arguments
  export extern "jj help revert" [
  ]

  # Show the current workspace root directory
  export extern "jj help root" [
  ]

  # Run a command across a set of revisions.
  export extern "jj help run" [
  ]

  # Show commit description and changes in a revision
  export extern "jj help show" [
  ]

  # Manage which paths from the working-copy commit are present in the working copy
  export extern "jj help sparse" [
  ]

  # List the patterns that are currently present in the working copy
  export extern "jj help sparse list" [
  ]

  # Update the patterns that are present in the working copy
  export extern "jj help sparse set" [
  ]

  # Split a revision in two
  export extern "jj help split" [
  ]

  # Move changes from a revision into its parent
  export extern "jj help squash" [
  ]

  # Show high-level repo status
  export extern "jj help status" [
  ]

  # Manage tags
  export extern "jj help tag" [
  ]

  # List tags
  export extern "jj help tag list" [
  ]

  # Infrequently used commands such as for generating shell completions
  export extern "jj help util" [
  ]

  # Print a command-line-completion script
  export extern "jj help util completion" [
  ]

  # Run backend-dependent garbage collection
  export extern "jj help util gc" [
  ]

  # Print a ROFF (manpage)
  export extern "jj help util mangen" [
  ]

  # Print the CLI help for all subcommands in Markdown
  export extern "jj help util markdown-help" [
  ]

  # Print the JSON schema for the jj TOML config format
  export extern "jj help util config-schema" [
  ]

  # Undo an operation (shortcut for `jj op undo`)
  export extern "jj help undo" [
  ]

  # Move changes from a revision's parent into the revision
  export extern "jj help unsquash" [
  ]

  # Stop tracking specified paths in the working copy
  export extern "jj help untrack" [
  ]

  # Display version information
  export extern "jj help version" [
  ]

  # Commands for working with workspaces
  export extern "jj help workspace" [
  ]

  # Add a workspace
  export extern "jj help workspace add" [
  ]

  # Stop tracking a workspace's working-copy commit in the repo
  export extern "jj help workspace forget" [
  ]

  # List workspaces
  export extern "jj help workspace list" [
  ]

  # Show the current workspace root directory
  export extern "jj help workspace root" [
  ]

  # Update a workspace that has become stale
  export extern "jj help workspace update-stale" [
  ]

  # Print this message or the help of the given subcommand(s)
  export extern "jj help help" [
  ]

}

export use completions *
