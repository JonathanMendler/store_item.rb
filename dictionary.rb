require "http"

APIKEY = "zoykch8rrpuv19tuv0o2igg7ketsgrcz213sank54les4zjfv"

system "clear"
puts "Do you require definitions? I'm here to help!"
print "What is your word? "
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{APIKEY}")

dictionary = response.parse(:json)

definition = dictionary[0]["text"]
example = dictionary[0]["exampleUses"]
pronounce = dictionary[0]["textProns"]
puts "The definition of #{word} is #{definition}"
