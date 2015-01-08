# 0.3.1

Mark Kusch (4):
      Allow github to perform integration testing
      Update integration testing to work with Serverspec 2.N
      Ensure tasks define sudo: yes when requiring superuser privileges
      Abstract supported platforms and VCS in vars

# 0.3.0

* Add support for ansible_os_family == 'RedHat'

Karl Goetz (5):
      Update configuration - Mercurial command is hg
      Fix syntax error in template
      Add option to control ansible_managed in config
      Add support for Red Hat family systems
      Add EL to supported platforms

Mark Kusch (6):
      Update ubuntu-upstart-sshkey container to version 1.0.0
      Fix libselinux-python missing on ansible_os_family == "RedHat"
      Allow role to configure run on ansible_os_family == "RedHat"
      Update documentation for new vars and contributions
      Provide variable types for role variables documentation
      Integrate #3 from github

# ...

# 0.1.0

* Initial release


<!-- vim: set nofen ts=4 sw=4 et: -->
