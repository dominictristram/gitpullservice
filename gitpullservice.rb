require 'sinatra'

post '/github/push' do
  `touch /tmp/didgitpull`
  `cd /var/www/dominictristram.com && git pull`
end
