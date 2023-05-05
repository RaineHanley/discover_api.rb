require "http"

API_KEY = "APIKEY"
puts "Enter a word: "
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=APIKEY")

definition_data = response.parse(:json)

# definition = definition_data ["word"]

puts definition_data[0]["text"]

response_top_example = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=APIKEY")

top_example = response_top_example.parse(:json)

puts top_example[0]
