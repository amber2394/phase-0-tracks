puts "What is the hamster's name?"
hamsters_name = gets.chomp

puts "What is the volume level? (1-10)"
volume_level = gets.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
good_candidate = gets.chomp

puts "What is the estimated age of the hamster?"
age = gets.to_i
if age == ""
  age = nil
end




