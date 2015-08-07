require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require_relative 'parse_horoscope'

HOROSCOPE_SIGNS = {aboussayoud: 'Sagittarius'}


route :get, :post, '/' do
	#print params
	return {text: find_horoscope(HOROSCOPE_SIGNS[:params[:user_name].to_sym])}.to_json

end

# name = "aboussayoud"

# puts find_horoscope(HOROSCOPE_SIGNS[:name])