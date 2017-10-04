require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  file = File.read('git-log.json')
  @git_log = JSON.parse(file)
  erb :'index.html'
end
