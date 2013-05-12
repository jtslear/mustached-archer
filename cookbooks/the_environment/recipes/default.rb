#required_packages  =
#  %w{ postgresql-devel }
#
#required_packages.each do |package|
#  package package do
#    action  :install
#  end
#end
#
ruby_version = "2.0.0-p0"
rbenv_ruby ruby_version do
  action  :install
end

rbenv_rehash "Reticulating Splines" do
  root_path "/usr/local/rbenv"
end

rbenv_global ruby_version

rbenv_gem "bundler" do
  action  :install
end

git "/opt/luckycharms" do
  repository "git://github.com/drapergeek/luckycharms"
  reference "master"
  action :sync
end
