#Jenkins CI Server Build Using Chef#

Using Chef, building a Jenkins CI server for code testing

##Note:##

This is a work in progress, I've run into the following problems:

 - Not all plugins for Jenkins install, specifically, rbenv, and campfire
 - I cannot create a postgresql role
 - This does not work in centOS
  - I suspect the pgdg yum recipe is not compatible with chef 11, and/or centos, but I need to complete more testing

- Note that I utilize the vmware fusion provider for vagrant, simply rid of those configurations if fusion is not your choice guest os provider

##Requirements:##
 - Vagrant

##Usage:##

    vagrant up
    vagrant ssh
    sudo su -
    chef-solo -j /etc/chef/node.js

Then proceed to configuring Jenkins appropriately
