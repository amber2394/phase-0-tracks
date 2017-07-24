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

puts "Your hamster's name is #{hamsters_name}!"
puts "Your hamster's volume level is #{volume_level}."
puts "Your hamster's fur color is #{fur_color}."
if good_candidate == "y"
  puts "Your hamster is a good candidate!"
else
  puts "Sorry, your hamster is not a good candidate. :("
end
puts "The estimated age of your hamster is #{age}."




