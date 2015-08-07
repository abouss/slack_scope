require 'rubygems'
require 'nokogiri'
require 'open-uri'
   


def find_horoscope(sign)  
  signs = { Sagittarius: 9, Scorpio: 8}
  page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))   
  return page.css('div[class="shareable-section"]')[signs[:Sagittarius.to_sym]].text
end 





