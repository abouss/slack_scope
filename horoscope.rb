require 'sinatra'
require 'json'
require 'sinatra/multi_route'
require 'parse_horoscope'


route :get, :post, '/' do
	#print params
	return {text: find_horoscope(params[:user_name]}).to_json

end
