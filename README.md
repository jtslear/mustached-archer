#Jenkins CI Server Build Using Chef#

Using Chef, building a Jenkins CI server for code testing

##Note:##

This is a work in progress, I've run into the following problems:

 - I cannot create a postgresql role
 - This recipe does not work in centOS
  - I suspect the pgdg yum recipe is not compatible with chef 11, and/or centos, but I need to complete more testing (I needed a version higher than the centos repos)

##Requirements:##
 - Ubuntu
 - Chef 10.x

##Usage:##

    recipe['the_environment']

Then proceed to configuring Jenkins appropriately
 - Don't forget to configure git in Jenkins!

##Other Notable Items##
If a package is required add it to `node['the_environment']['packages']`
