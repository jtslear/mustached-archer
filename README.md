#Jenkins CI Server Build Using Chef#

Using Chef, building a Jenkins CI server for code testing

##Note:##

This is a work in progress, I've run into the following problems:

 - I cannot create a postgresql role
 - This recipe does not work in centOS
  - I suspect the pgdg yum recipe is not compatible with chef 11, and/or centos, but I need to complete more testing (I needed a version higher than the centos repos)

 - Note that I utilize the vmware fusion provider for vagrant, simply rid of those configurations if fusion is not your choice guest os provider

##Requirements:##
 - Vagrant
  - If one chooses not to use vagrant simply point the chef config to this cookbooks dir
 - Ubuntu

##Usage:##

    vagrant up

Then proceed to configuring Jenkins appropriately
 - If using vagrant, it can be accessed via http://localhost:8080
 - If not using vagrant, use the IP of your host
 - Don't forget to configure git on Jenkins!

##Other Notable Items##
If a package is required add it to `node['the_environment']['packages']`

I utilize Vagrant's native ability for calling upon chef solo.  Should one want to avoid this simple comment the following lines in the Vagrant file:

      config.vm.provision :chef_solo do |chef|
        chef.add_recipe "the_environment"
        chef.json = {
        "postgresql": {
          "password": {
              "postgres": "iloverandompasswordsbutthiswilldo"
              }
           }
        }
      end
