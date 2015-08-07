require 'rubygems'
require 'nokogiri'
require 'open-uri'
   



# signs = { Sagittarius: 9, Scorpio: 8}

# page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))   
# print page.css('div[class="shareable-section"]')[signs[:Scorpio]].text


def find_horoscope(sign)  
  signs = { Sagittarius: 9, Scorpio: 8}
  page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))   
  return print page.css('div[class="shareable-section"]')[signs[:Sagittarius.to_sym]].text
 
end 





