#node.set['postgresql']['enable_pgdg_yum'] = true
#node.set['postgresql']['enable_pgdg_yum'] = true
node.set['postgresql']['version'] = "9.2"
#node.set['postgresql']['dir'] = "/var/lib/pgsql/9.2/data"
#node.set['postgresql']['client']['packages'] = ["postgresql92"]
#node.set['postgresql']['server']['packages'] = ["postgresql92-server"]
#node.set['postgresql']['server']['service_name'] = "postgresql-9.2"
#node.set['postgresql']['contrib']['packages'] = ["postgresql92-contrib"]
#node.default['postgresql']['pgdg']['repo_rpm_url'] = "http://yum.postgresql.org/9.2/redhat/rhel-6-x86_64/pgdg-centos92-9.2-6.noarch.rpm"
#node.default['postgresql']['version'] = "9.2"

node.default['postgresql']['pg_hba'] = [
  {
  :comment => "# created by chef \'the_environment\' for IPv4",
  :type => 'host', 
  :db => 'all', 
  :user => 'all', 
  :addr => '127.0.0.1/32',
  :method => 'trust'
},
  {
  :comment => "# created by chef \'the_environment\' for IPv6",
  :type => 'host', 
  :db => 'all', 
  :user => 'all', 
  :addr => '::1/128',
  :method => 'trust'
},
]

node.default['ruby_build']['install_pkgs_cruby'] =
  %w{ gcc-c++ patch readline readline-devel zlib zlib-devel
      libffi-devel openssl-devel
      make bzip2 autoconf automake libtool bison
      libxml2 libxml2-devel libxslt libxslt-devel
      git subversion autoconf }

node.default[:jenkins][:server][:plugins] = 
  %w{ git-client git-server git github rbenv campfire }

#default['yum']['exclude'] = "postgres*"
node.default['the_environment']['packages'] = %w{ libxml2-dev libxslt-dev }
