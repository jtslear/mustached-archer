# configure a specific version of postgres
node.set['postgresql']['version'] = "9.2"

# allow passwordless authentication to postgres
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

# the default recipe for ruby_build includes a package, libyaml, that is not available on centos, overwriting it
node.default['ruby_build']['install_pkgs_cruby'] =
  %w{ gcc-c++ patch readline readline-devel zlib zlib-devel
      libffi-devel openssl-devel
      make bzip2 autoconf automake libtool bison
      libxml2 libxml2-devel libxslt libxslt-devel
      git subversion autoconf }

# adding some plugins to jenkins
# for some odd reason the rbenv and campfire plugins do not install
node.default[:jenkins][:server][:plugins] = 
  %w{ git-client git-server git github ruby-runtime rbenv campfire }

# The below are requirements for some gems
node.default['the_environment']['packages'] = %w{ libxml2-dev libxslt-dev }

# Let us create the Jenkins User in postgres
postgresql_connection_info = {:host => "127.0.0.1",
  :port => node['postgresql']['config']['port'],
  :username => 'postgres',
  :password => node['postgresql']['password']['postgres']}

postgresql_database_user 'jenkins' do
  connection postgresql_connection_info
  password 'super_secret'
  action  :create
end
