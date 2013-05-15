include_recipe "apt"

log node['platform']
log node['platform_version']
log node['kernel']['machine']

include_recipe "postgresql::server"
include_recipe "jenkins::server"
include_recipe "nodejs::install_from_source"
include_recipe "phantomjs"
include_recipe "git"

Array(node['the_environment']['packages']).each do |selections|
  package selections do
    action  :install
  end
end
