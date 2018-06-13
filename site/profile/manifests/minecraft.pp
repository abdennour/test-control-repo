class profile::minecraft {
  # include minecraft # Reference to ROOT/site/minecraft/manifests/init.pp
  class {'minecraft':
    install_dir => '/srv/minecraft',
  }
}
