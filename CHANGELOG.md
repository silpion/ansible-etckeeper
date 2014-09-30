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
