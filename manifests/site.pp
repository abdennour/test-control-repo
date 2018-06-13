node default {
  file {'/tmp/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
