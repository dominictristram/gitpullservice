require 'rubygems'
require 'daemons'
 
pwd = Dir.pwd
Daemons.run_proc('gitpullservice.rb -p 625', {:dir_mode => :normal, :dir => "/var/www/gitpullservice/pids/sinatra}) do
  Dir.chdir(pwd)
  exec "ruby gitpullservice.rb"
end

