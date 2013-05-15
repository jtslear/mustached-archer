include_recipe "apt"

log node['platform']
log node['platform_version']
log node['kernel']['machine']

#include_recipe "postgresql::client"
include_recipe "postgresql::server"
include_recipe "jenkins::server"
include_recipe "nodejs::install_from_source"
include_recipe "phantomjs"
include_recipe "git"
#include_recipe "rbenv::system"
#include_recipe "ruby_build"

#ruby_version = "2.0.0-p0"
#rbenv_ruby ruby_version do
#  action  :install
#end
#
#rbenv_rehash "Reticulating Splines" do
#  root_path "/usr/local/rbenv"
#end
#
#rbenv_global ruby_version

#rbenv_gem "bundler" do
#  action  :install
#end

#package "pgdg-centos92" do
#  # found via `rpm -q --filesbypackage -p pgdg-centos92-9.2-6.noarch.rpm`
#  source "/cookbooks/the_environment/files/pgdg-centos92-9.2-6.noarch.rpm"
#  provider Chef::Provider::Package::Rpm
#  action :remove
#end

#Array(node['the_environment']['pg_packages']).each do |pkgs|
#  package pkgs do
#    action :install
#  end
#end

