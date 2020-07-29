require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  "hello"
end

get '/pages/:number' do
  "No. #{params['number']}"
end

get '/books/*' do |title|
  title
end

get '/pages' do
  @key1 = params['key1'] ? params['key1'] : ""
  @key2 = params['key2'] ? params['key2'] : ""
  @rend = {keyA: @key1, keyB: @key2}
  @rend.to_json
end
