require "http"

APIKEY = ""

system "clear"
puts "Do you require definitions? I'm here to help!"
while true
  print "What is your word? "
  word = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{APIKEY}")

  dictionary = response.parse(:json)

  definition = dictionary[0]["text"]
  example = dictionary[0]["exampleUses"]
  pronounce = dictionary[0]["textProns"]
  puts "You've chosen the word #{word}, which is pronounced #{pronounce}. Its definition is '#{definition}' and an example of it in use would be #{example}."
  puts "Would you like to try another word? Type 'q' to quit."
  if word == "q"
    puts "Goodbye!"
    break
  end
end
