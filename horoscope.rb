require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require_relative 'parse_horoscope'
load 'HOROSCOPE_SIGNS'

# HOROSCOPE_SIGNS = {aboussayoud: 'Sagittarius'}

route :get, :post, '/' do
	name = params[:user_name]
	return "YOOO"
	#return {text: find_horoscope(HOROSCOPE_SIGNS[name.to_sym])}.to_json
end
