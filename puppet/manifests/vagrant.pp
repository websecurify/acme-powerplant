class system-update {
  class { 'apt':
    always_apt_update => true,
  }
}

class mysql-setup {
  require system-update

  class { 'mysql':
  }
  
  class { 'mysql::php':
  }

  class { 'mysql::server':
    config_hash => {
      root_password => 'toor'
    },
  }
}

class apache-setup {
  require system-update

  class { 'apache':
    mpm_module => 'prefork',
  }

  class { 'apache::mod::php':
  }

  apache::vhost { 'acme-powerplant':
    port => '80',
    docroot => '/vagrant/www',
	default_vhost => true,
  }
}

include system-update
include mysql-setup
include apache-setup
