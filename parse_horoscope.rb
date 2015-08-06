require 'rubygems'
require 'nokogiri'
require 'open-uri'
   
page = Nokogiri::HTML(open("http://new.theastrologer.com/daily-horoscope"))   
puts page.css('div[class="shareable-section"]')[9].text




