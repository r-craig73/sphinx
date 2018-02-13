require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  "This application takes input from the user and tests it against predefined riddles"
  erb(:input)
end

post('/output') do
  @riddle1 = params.fetch("riddle1")
  @riddle2 = params.fetch("riddle2")
  @riddle3 = params.fetch("riddle3")
  output = Riddles.new(@riddle1, @riddle2, @riddle3)
  @result = output.reveal
    if (@result == 'oh happy days')
      erb(:success)
    else
      erb(:failure)
    end
  end
