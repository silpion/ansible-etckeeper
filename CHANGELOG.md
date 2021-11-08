# 2.0.0
Anja Siek (2):

* update role generator
* update required ansible version

Mark Kusch (7):

* Remove useless whitespace
* Enforce Silpion style guide
* Add local facts
* Wrap util package state configuration
* Add complete support for --check --tags etckeeper
* Be more specific/clean with fact variable naming
* Perform boolean compare to generate booleans

# 0.4.0

Mark Kusch (10):

* Update VCS installation description for RedHat
* Stay consistent with style guide
* Add missing tags
* Configure dependency on silpion.util role
* Remove code/files managed with silpion.util role
* Update documenatation for removed vars and added dependencies
* Decide whether to show a cow based on util\_template\_use\_cow variable
* Modern/generic installation/configuration of etckeeper
* Manage .gitignore when etckeeper\_vcs == git
* Add VMs used for testing

Robin Schneider (2):

* Added support for custom entries in /etc/.gitignore.
* Be consistent with current coding style.

# 0.3.1

* Mark Kusch (4):
* Allow github to perform integration testing
* Update integration testing to work with Serverspec 2.N
* Ensure tasks define sudo: yes when requiring superuser privileges
* Abstract supported platforms and VCS in vars

# 0.3.0

* Add support for ansible_os_family == 'RedHat'

* Karl Goetz (5):
* Update configuration - Mercurial command is hg
* Fix syntax error in template
* Add option to control ansible_managed in config
* Add support for Red Hat family systems
* Add EL to supported platforms

* Mark Kusch (6):
* Update ubuntu-upstart-sshkey container to version 1.0.0
* Fix libselinux-python missing on ansible_os_family == "RedHat"
* Allow role to configure run on ansible_os_family == "RedHat"
* Update documentation for new vars and contributions
* Provide variable types for role variables documentation
* Integrate #3 from github

# ...

# 0.1.0

* Initial release


<!-- vim: set nofen ts=4 sw=4 et: -->
