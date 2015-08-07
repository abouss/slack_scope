require 'sinatra'
require 'sinatra/multi_route'
require 'json'
require './parse_horoscope'
require './HOROSCOPE_SIGNS'

# HOROSCOPE_SIGNS = {aboussayoud: 'Sagittarius'}

route :get, :post, '/' do

	sign_text = params[:text].sub("pp horoscope ", "")
	if text_sign != "me"
		horoscope = find_horoscope(sign_text).split("\n\n")
		emoji = HOROSCOPE_EMOJIS[text_sign.to_sym]
		horoscope = emoji[0] + horoscope[0].tr("\n", "") + emoji[2]+ "\n"  + horoscope[1]
	else
		name = params[:user_name]
		horoscope = find_horoscope(HOROSCOPE_SIGNS[name.to_sym]).split("\n\n")
		emoji = HOROSCOPE_EMOJIS[HOROSCOPE_SIGNS[name.to_sym].to_sym]
		horoscope = emoji[0] + horoscope[0].tr("\n", "") + emoji[2]+ "\n"  + horoscope[1]
	end
	return {text: horoscope}.to_json
end
