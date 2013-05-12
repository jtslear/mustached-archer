# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos_base"
  config.vm.hostname = "jenkins-chef"
  config.vm.guest = "linux"
  config.vm.synced_folder "cookbooks", "/cookbooks"
  config.vm.synced_folder "chef", "/etc/chef"
  config.vm.provider "vmware_fusion" do |v|
  config.vm.network :forwarded_port, guest: 8080, host: 8080
#    v.gui = true
    v.vmx["memsize"] = "1028"
    v.vmx["usb.vbluetooth.startConnected"] = "FALSE"
    v.vmx["tools.syncTime"] = "FALSE"
    v.vmx["hard-disk.hostBuffer"] = "disabled"
    v.vmx["annotation"] = "Building a chef server"
  end
#  config.vm.provision :chef_solo do |chef|
#    chef.add_recipe "git"
#    chef.add_recipe "java"
#    chef.add_recipe "jenkins::server"
#    chef.add_recipe "jenkins::proxy_nginx"
#    #chef.json = {
#    #  "apache" => {
#    #    "listen_address" => "0.0.0.0"
#    #  }
#    #}
#  end

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # View the documentation for the provider you're using for more
  # information on available options.
end
