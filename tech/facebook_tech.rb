require 'curb'
require 'nokogiri'
require 'open-uri'

puts "what is the facebook post that you want to follow ?"
url = gets.chomp
data = Nokogiri::HTML(open(url)) 
puts data 
#end

	