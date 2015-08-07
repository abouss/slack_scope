require 'rubygems'
require 'nokogiri'
require 'open-uri'

def find_horoscope(sign)
	#signs = {Sagittarius: '9',Scorpio: '8', Capricorn: '10',Aquarius: '11', Pisces: '12'}
    page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))
    #horoscope = page.css('div[class="shareable-section"]')[signs[sign.to_sym].to_i].text.split("\n\n") 
    call = 'div[sunsign="' + sign + '"]'
    horoscope = page.css(call)[1].text
    return horoscope
   
    #return page.css('div[class="shareable-section"]')[signs[sign.to_sym].to_i].text.split("\n\n")
    #return ":arrow_upper_right:" + horoscope[0].tr("\n", "") + ":arrow_upper_right:"+ "\n"  + horoscope[1]
end 


#puts find_horoscope('Sagittarius')


