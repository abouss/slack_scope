require 'sinatra'
require 'json'
require 'sinatra/multi_route'

route :get, :post, '/' do

	return {text: "SUP"}.to_json

end
