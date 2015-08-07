require 'rubygems'
require 'nokogiri'
require 'open-uri'

def find_horoscope(sign)
	signs = {Sagittarius: '9',Scorpio: '8', Capricorn: '10',Aquarius: '11', Pisces: '12'}
    page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))
    horoscope = page.css('div[class="shareable-section"]')[signs[sign.to_sym].to_i].text.split("\n\n")
    return ":arrow_upper_right:" + horoscope[0] + ":arrow_upper_right:"+ "\n"  + horoscope[1]
end 





