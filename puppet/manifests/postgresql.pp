#
# Postgresql
#
class { 'postgresql::globals':
  manage_package_repo => true,
  version             => '9.5',
  encoding            => 'UTF-8',
  locale              => 'en_US.UTF-8',
} ->
class { 'postgresql::server': 
  ip_mask_allow_all_users => '0.0.0.0/0',
  listen_addresses        => '*',
  port                    => '5432',
} ->
class { 'postgresql::server::postgis': }

postgresql::server::db { 'urbandev_dev':
  user     => 'urbandev_dev',
  password => postgresql_password('urbandev_dev', 'urbandev_dev'),
} ->
postgresql::server::extension { 'urbandev_dev-postgis':
  ensure    => present,
  database  => 'urbandev_dev',
  extension => 'postgis',
}

postgresql::server::db { 'urbandev_stg':
  user     => 'urbandev_stg',
  password => postgresql_password('urbandev_stg', 'urbandev_stg'),
} ->
postgresql::server::extension { 'urbandev_stg-postgis':
  ensure    => present,
  database  => 'urbandev_stg',
  extension => 'postgis',
}

postgresql::server::db { 'urbandev_prd':
  user     => 'urbandev_prd',
  password => postgresql_password('urbandev_prd', 'urbandev_prd'),
} ->
postgresql::server::extension { 'urbandev_prd-postgis':
  ensure    => present,
  database  => 'urbandev_prd',
  extension => 'postgis',
}

