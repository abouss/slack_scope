require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require_relative 'parse_horoscope'
load 'HOROSCOPE_SIGNS'


route :get, :post, '/' do
	name = params[:user_name]
	#return find_horoscope(HOROSCOPE_SIGNS[:name])
	return {text: find_horoscope(HOROSCOPE_SIGNS[:name])}.to_json
end
