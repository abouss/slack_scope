require 'sinatra'
require 'json'
require 'sinatra/multi_route'


route :get, :post, '/' do
	#print params
	return {text: params[:name]}.to_json

end
