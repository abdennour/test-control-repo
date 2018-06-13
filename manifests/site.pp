node default {
  file {'/tmp/README.md':
    ensure  => file,
    content => $os.family, # $(facter os.family)
    owner   => 'root',
  }
  
}

# node 'master.puppet.vm' {
#  include role::master_server
# }

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
