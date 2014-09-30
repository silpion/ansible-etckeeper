# ansible-etckeeper

Install and configure etckeeper.

## Requirements

None.

## Role Variables

* ``etckeeper_vcs``: Configure the VCS etckeeper shall use (default: ``git``, values: [``git``, ``mercurial``, ``bzr``, ``darcs``])
* ``etckeeper_git_commit_options``: Configure Git commit options for etckeeper (default: "")
* ``etckeeper_hg_commit_options``: Configure Mercurial commit options for etckeeper (default: "")
* ``etckeeper_bzr_commit_options``: Configure Bazaar commit options for etckeeper (default: "")
* ``etckeeper_darcs_commit_options``: Configure Darcs commit options for etckeeper (default: "")
* ``etckeeper_avoid_daily_autocommits``: Configure etckeeper to set AVOID_DAILY_AUTOCOMMITS=1 (default: ``false``)
* ``etckeeper_avoid_commit_before_install``: Configure etckeeper to set AVOID_COMMIT_BEFORE_INSTALL=1 (default: ``false``)
* ``etckeeper_with_cow``: Change wether the configuration files 'Managed by ansible' warning should be said by a cow or not (defaut: ``true``)

### ansible_os_family == 'RedHat'

* ``etckeeper_epel_version``: Red Hat EPEL version to configure (int, default: ``6``)
* ``etckeeper_epel_baseurl``: Red Hat EPEL base url (string, default: ``http://download.fedoraproject.org/pub/epel``)
* ``etckeeper_epel_mirrorurl``: Red Hat EPEL mirror url (string, default: ``https://mirrors.ferdoraproject.org/metalink``)
* ``etckeeper_epel_enable_debug``: Enable EPEL debug repository (bool, default: ``false``)
* ``etckeeper_epel_enable_source``: Enable EPEL source repository (bool, default: ``false``)

## Dependencies

None.

## Example Playbook

    - hosts: servers
      roles:
         - { role: etckeeper, etckeeper_vcs: darcs }


## License

Apache Version 2.0

## Integration testing

This role provides integration tests using the Ruby RSpec/serverspec framework
with a few drawbacks at the time of writing this documentation.

- Currently supports ansible_os_family == Debian and RedHat.

Running integration tests requires a number of dependencies being
installed. As this role uses Ruby RSpec there is the need to have
Ruby with rake and bundler available.

    # install role specific dependencies with bundler
    bundle install

<!-- -->

    # run the complete test suite with Docker
    rake suite

<!-- -->

    # run the complete test suite with Vagrant
    RAKE_ANSIBLE_USE_VAGRANT=1 rake suite


## Author information

Mark Kusch @mark.kusch silpion.de

### Contributions

Thanks for their thoughts and work goes to...

* [Karl Goetz](https://github.com/goetzk)


<!-- vim: set nofen ts=4 sw=4 et: -->
