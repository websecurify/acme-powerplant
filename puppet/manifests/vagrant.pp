class system-update {
  exec { "apt-get update":
    command => "/usr/bin/apt-get update",
  }
}

class php-setup {
}

class nginx-setup {
}

class mysql-setup {
}

include system-update
include php-setup
include nginx-setup
include mysql-setup
