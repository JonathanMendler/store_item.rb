require "http"

system "clear"
puts "Do you require definitions? I'm here to help!"
print "What is your word? "
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{APIKEY}")

dictionary = response.parse(:json)

definition = dictionary[0]["text"]
puts "The definition of #{word} is #{definition}"
