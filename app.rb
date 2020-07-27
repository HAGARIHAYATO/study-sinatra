require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  params['key1'] ? params['key1'] : "hello"
end

get '/pages' do
  @key1 = params['key1'] ? params['key1'] : ""
  @key2 = params['key2'] ? params['key2'] : ""
  @rend = {keyA: @key1, keyB: @key2}
  @rend.to_json
end

get '/pages/:number' do
  "Hello #{params['number']}"
end

get '/books/*' do |title|
  title
end