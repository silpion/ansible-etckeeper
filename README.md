# ansible-etckeeper

Install and configure etckeeper.


## Requirements

None.


## Dependencies

This role depends on [groover.util](https://github.com/silpion/ansible-util)
role. This is configured for ``ansible-galaxy install`` in **requirements.yml**.

**NOTE**: Requirements are installed as virtual user ``silpion``
(``silpion.util``).

Be sure to install required roles with

    ansible-galaxy install --role-file requirements.yml


## Role Variables

* ``etckeeper_vcs``: Configure the VCS etckeeper shall use (string, default: ``git``, values: [``git``, ``mercurial``, ``bzr``, ``darcs``])
* ``etckeeper_git_commit_options``: Configure Git commit options for etckeeper (string, default: "")
* ``etckeeper_hg_commit_options``: Configure Mercurial commit options for etckeeper (string, default: "")
* ``etckeeper_bzr_commit_options``: Configure Bazaar commit options for etckeeper (string, default: "")
* ``etckeeper_darcs_commit_options``: Configure Darcs commit options for etckeeper (string, default: "")
* ``etckeeper_avoid_special_file_warning``: Configure etckeeper to set AVOID_SPECIAL_FILE_WARNING=1 (bool, default: ``false``)
* ``etckeeper_avoid_daily_autocommits``: Configure etckeeper to set AVOID_DAILY_AUTOCOMMITS=1 (bool, default: ``false``)
* ``etckeeper_avoid_commit_before_install``: Configure etckeeper to set AVOID_COMMIT_BEFORE_INSTALL=1 (bool, default: ``false``)

### silpion.util variables

See [util documentation](http://github.com/silpion/ansible-util) for
variables maintained with util role how to configure various aspects
of Ansible behaviour, e.g. ``util_package_state`` or ``util_template_use_cow``
variables.


## Example Playbook

    - hosts: servers
      roles:
         - { role: etckeeper, etckeeper_vcs: darcs }


## Contributing

If you want to contribute to this repository please be aware that this
project uses a [gitflow](http://nvie.com/posts/a-successful-git-branching-model/)
workflow with the next release branch called ``next``.

Please fork this repository and create a local branch split off of the ``next``
branch and create pull requests back to the origin ``next`` branch.


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
* [ypid](https://github.com/ypid)


<!-- vim: set nofen ts=4 sw=4 et: -->
