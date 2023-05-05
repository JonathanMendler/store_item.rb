puts "Hello! Can you tell me your 5 favorite foods?"
foods = []
5.times do
  foods << gets.chomp
end
index = 1
foods.each do |food|
  puts "#{index}. #{food}"
  index += 1
end
