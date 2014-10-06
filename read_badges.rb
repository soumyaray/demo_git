require 'open-uri'
require 'nokogiri'

web_data = open('http://www.codecademy.com/users/soumya.ray/achievements')
doc = Nokogiri.HTML(web_data)

achievements = doc.xpath("/div[@class='grid-row']//h5[@class='margin-top--1']")
achievements.each { |badge_element| puts badge_element.text }

achievements = doc.xpath("/h5[@class='margin-top--1']")
achievements.each { |badge_element| puts badge_element.text }
