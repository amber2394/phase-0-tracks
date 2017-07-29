=begin

Pseudocode:

1. Ask the client their name and recieve input (string)
2. Ask the client their age and recieve input (integer)
3. Ask the client if they have children (boolean)
4. If "yes" ask the client how many children they have
5. If "no" move on to the next prompt
6. Ask client to choose a design theme (string)
7. Print out existing client data and ask the client if this information is correct
8. If "no" then allow a client to update a key
9. If "yes" then print "You have succesfully submitted you interior design application!"

=end

puts "Welcome to the interior design application!"
application = {}

puts "What is your name?"
input_name = gets.chomp
application[:name] = input_name.capitalize

puts "How old are you?"
input_age = gets.chomp
application[:age] = input_age.to_i

loop do
  puts "Do you have children? (y/n)"
  have_children = gets.chomp
  application[:have_children] = have_children
  if have_children == "y"
    puts "How many children do you have?"
    children_quantity = gets.chomp
    application[:children_quantity] = children_quantity
    puts "What decor theme are you looking for?"
    decor_theme = gets.chomp
    application[:decor_theme] = decor_theme
  elsif
    have_children == "n"
    puts "What decor theme are you looking for?"
    decor_theme = gets.chomp
    application[:decor_theme] = decor_theme
  else
    puts "I'm sorry I do not understand your input."
  end
break if have_children == "n"
break if have_children == "y"
end

loop do
  puts "Is this information correct? (y/n)"
  p application
  correct_info = gets.chomp
  if correct_info == "n"
    puts "What would you like to change?"
    p application.keys
    application[:children_quantity] = gets.chomp.to_sym
    p application[:children_quantity]
  else
    break if correct_info == "y"
  end
end

puts "You have succesfully submitted you interior design application!"


puts "You have succesfully submitted you interior design application!"