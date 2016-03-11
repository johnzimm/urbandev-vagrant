#!/bin/bash

cd /vagrant/puppet

sudo /opt/puppetlabs/bin/puppet apply ./manifests/common.pp --modulepath=./modules
sudo /opt/puppetlabs/bin/puppet apply ./manifests/nginx.pp --modulepath=./modules
sudo /opt/puppetlabs/bin/puppet apply ./manifests/mysql.pp --modulepath=./modules
sudo /opt/puppetlabs/bin/puppet apply ./manifests/postgresql.pp --modulepath=./modules
sudo /opt/puppetlabs/bin/puppet apply ./manifests/urbandev_frontend.pp --modulepath=./modules
sudo /opt/puppetlabs/bin/puppet apply ./manifests/urbandev_backend.pp --modulepath=./modules
