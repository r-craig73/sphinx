require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  "This application takes input from the user and tests it against predefined riddles"
  erb(:input)
end

get('/result') do
  @riddle1 = params.fetch("riddle1")
  output = Riddles.new(@riddle1)
  @result = output.reveal
  erb(:output)
end
