node default {
  file {'/tmp/README.md':
    ensure  => file,
    content => "Welcome to ${fqdn}!\n", # $(facter fqdn)
    owner   => 'root',
  }
  
}

node 'master.puppet.vm' {
  include role::master_server
}

node 'mytest.puppet.vm' {
  include role::minecraft_server
}


node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
