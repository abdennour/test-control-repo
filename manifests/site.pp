node default {
  file {'/tmp/README.md':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  
}

node 'master.puppet.vm' {
  include role::master_server
}
