require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require_relative 'parse_horoscope'

HOROSCOPE_SIGNS = {aboussayoud: 'Sagittarius'}


route :get, :post, '/' do
	name = params[:username]
	return {text: find_horoscope(HOROSCOPE_SIGNS[:name])}.to_json

end


# params = {username: 'aboussayoud'}

# puts find_horoscope(HOROSCOPE_SIGNS[:name])