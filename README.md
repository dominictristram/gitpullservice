gitpullservice
==============

A very simple Ruby Web service which is triggered by a push to Github.

On being polled by Github, the service performs a git pull to get the newly pushed code.

Installation & Setup

There are two steps. The first is to install and configure the Ruby code contained in this repository. The second is to configure a Service Hook on GitHub for your project.

Ruby Code

Clone this repository to somewhere that you can make available on your server. I use /var/www (and this is the default), but you can use anything you like.

Edit the control.rb file and change the path from /var/www/gitpullservice/pids/sinatra to where you've installed the file.

Edit gitpullservice.rb and change the path from /var/www/dominictristram.com to wherever the git directory you wish to update is.

Run the service with ruby gitpullservice.rb &

You may wish to put this service start in your server's startup mechanism, such as upstart or rc.local.


GitHub Service Hook

Using the GitHub Web interface, navigate to the project page for your GitHub project. Select the 'Settings' tab, then select the 'Service Hooks' link on the left. You can get to this page directly with a URL like this:

  https://github.com/[username]/[project]/settings/hooks

Select 'WebHook URLs'. In one of the 'URL' fields, insert the URL of your server containing the Ruby code. It will appear as so:

  http://example.com:625/github/push

This above example uses the default port.

