require './app'
require_relative 'bot'

# run both sinatra and facebook-messenger on /mybot
map("/mybot") do
  run Sinatra::Application
  run Facebook::Messenger::Server
end

# run regular sinatra for other paths (in case you ever need it)
run Sinatra::Application