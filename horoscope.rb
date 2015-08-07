require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require './parse_horoscope'
require './HOROSCOPE_SIGNS'

# HOROSCOPE_SIGNS = {aboussayoud: 'Sagittarius'}

route :get, :post, '/' do
	name = params[:user_name]
	#return name
	return {text: find_horoscope(HOROSCOPE_SIGNS[name.to_sym])}.to_json
end
