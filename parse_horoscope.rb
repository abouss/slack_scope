require 'rubygems'
require 'nokogiri'
require 'open-uri'
require './HOROSCOPE_SIGNS'


def find_horoscope(sign)

    page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))
    #horoscope = page.css('div[class="shareable-section"]')[signs[sign.to_sym].to_i].text.split("\n\n")
    #emoji = HOROSCOPE_EMOJIS[sign.to_sym]
    
    call = 'div[sunsign="' + sign + '"]'
    horoscope = page.css(call)[1]
    return horoscope
    # return emoji + horoscope[0].tr("\n", "") + emoji+ "\n"  + horoscope[1]
end
