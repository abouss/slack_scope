require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require './parse_horoscope'
require './HOROSCOPE_SIGNS'

# HOROSCOPE_SIGNS = {aboussayoud: 'Sagittarius'}

route :get, :post, '/' do
	name = params[:user_name]
	horoscope = find_horoscope(HOROSCOPE_SIGNS[name.to_sym]).split("\n\n")
	emoji = HOROSCOPE_EMOJIS[HOROSCOPE_SIGNS[name.to_sym].to_sym]

	horoscope = emoji[1] + emoji[0] + horoscope[0].tr("\n", "") + emoji[0] + emoji[1] + "\n"  + horoscope[1]

	return {text: horoscope}.to_json
end
