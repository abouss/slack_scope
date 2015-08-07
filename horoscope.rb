require 'sinatra'
require 'json'
require 'sinatra/multi_route'
#load 'parse_horoscope.rb'


route :get, :post, '/' do
	#print params
	return {text: params[:user_name]}.to_json

end
