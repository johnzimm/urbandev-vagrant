#
# MySQL Server
#
class { '::mysql::server': }

mysql::db { 'urbandev_dev':
  user     => 'urbandev_dev',
  password => 'vagrant_dev',
  host     => 'localhost',
  grant    => ['ALL'],
}

mysql::db { 'urbandev_stg':
  user     => 'urbandev_stg',
  password => 'vagrant_stg',
  host     => 'localhost',
  grant    => ['ALL'],
}

mysql::db { 'urbandev_prd':
  user     => 'urbandev_prd',
  password => 'vagrant_prd',
  host     => 'localhost',
  grant    => ['ALL'],
}
