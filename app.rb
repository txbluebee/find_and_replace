require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/show') do
  @old_word = params.fetch('old-word')
  @new_word = params.fetch('new-word')
  @words = params.fetch('words').find_and_replace(@old_word, @new_word)
  erb(:show)
end
