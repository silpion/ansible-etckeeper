# Role Name

Install and configure etckeeper.


# Requirements

None.


# Role Variables

## etckeeper_vcs

Configure the VCS etckeeper shall use.
Default: git
Values: ['git', 'hg', 'bzr', 'darcs']

## etckeeper_git_commit_options

Configure Git commit options for etckeeper.
Default: ""

## etckeeper_hg_commit_options

Configure Mercurial commit options for etckeeper.
Default: ""

## etckeeper_bzr_commit_options

Configure Bazaar commit options for etckeeper.
Default: ""

## etckeeper_darcs_commit_options

Configure Darcs commit options for etckeeper.
Default: ""

## etckeeper_avoid_daily_autocommits

Configure etckeeper to set AVOID_DAILY_AUTOCOMMITS=1.
Default: false

## etckeeper_avoid_commit_before_install

Configure etckeeper to set AVOID_COMMIT_BEFORE_INSTALL=1.
Default: false


# Dependencies

None.


# Example Playbook

    - hosts: servers
      roles:
         - { role: etckeeper, etckeeper_vcs: darcs }

# License

Apache 2


# Author Information

Mark Kusch @silpion.de mark.kusch


<!-- vim: set ts=4 sw=4 et nofen: -->
