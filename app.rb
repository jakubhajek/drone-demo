require 'sinatra'
require 'json'

get '/' do
  file = File.read('git-log.json')
  @git_log = JSON.parse(file)
  erb :'index.html'
end
