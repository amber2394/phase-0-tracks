#Employee Processing loop
puts "How many employees will be processed?"
repeat = gets.chomp.to_i
repeat.times do

#Questionnaire
  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.to_i

  puts "What year were you born?"
  birth_year = gets.to_i

  puts "Our company serves garlic bread. Should we order some for you? (y/n)"
  garlic_bread = gets.chomp
  ordered_garlic = garlic_bread == "y"

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  health_insurance = gets.chomp
  enroll_insurance = health_insurance == "y"

 #Variables
  current_year = 2017
  correct_age = current_year - birth_year

#Questionnaire Conditions
  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire..."
  elsif (correct_age) && ((ordered_garlic) || (enroll_insurance))
   result = "Probably not a vampire..."
  elsif (!correct_age) && ((!garlic_bread) || (!enroll_insurance))
    result = "Probably a vampire..."
  elsif (!correct_age) && (!garlic_bread) && (!enroll_insurance)
    result = "Almost certainly a vampire..."
  else
    result = "Results inconclusive..."
  end


#Allergies Survery
allergies = ""

while (allergies != "sunshine") || (allergies != "done")
  puts "Please list your allergies, one at a time:"
  allergies = gets.chomp
    if (allergies == "sunshine") && (allergies != "done")
      result = "Probably a vampire...!"
  end
break if (allergies = "sunshine") || (allergies = "done")
end

puts result

end