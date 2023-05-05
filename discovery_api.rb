require "http"

puts "Lets see if I can guess your age by typing in some information"
puts "What is your name?"

name = gets.chomp

puts "What country do you live in?"

country = gets.chomp

response = HTTP.get("https://api.agify.io?name=#{name}&#{country}_id=US")

puts response
