default['postgresql']['pg_hba'] = [
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
