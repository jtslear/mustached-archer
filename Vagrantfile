# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu_base"
  config.vm.hostname = "jenkins-chef"
  config.vm.guest = "linux"
  config.vm.synced_folder "cookbooks", "/cookbooks"
  config.vm.synced_folder "chef", "/etc/chef"
  config.vm.provider "vmware_fusion" do |v|
#    v.gui = true
    v.vmx["memsize"] = "768"
    v.vmx["usb.vbluetooth.startConnected"] = "FALSE"
    v.vmx["tools.syncTime"] = "FALSE"
    v.vmx["hard-disk.hostBuffer"] = "disabled"
    v.vmx["annotation"] = "Building a chef server"
  end
  config.vm.provision :chef_solo do |chef|
    chef.add_recipe "the_environment"
    chef.json = {
    "postgresql" => {
       "password" => {
          "postgres" => "iloverandompasswordsbutthiswilldo"
          }
       }
    }
  end
end
