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

  puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
  garlic_bread = gets.chomp

  puts "Would you like to enroll in the company's health insurance? (y/n)"
  health_insurance = gets.chomp

 #Allergies Survery

 loop do
  puts "Please list your allergies, one at a time:"
  allergies = gets.chomp
  if allergies == "sunshine"
    result = "Probably a vampire..."
  break
  elsif allergies == "done"
  break
  end
end

  current_year = 2017

  if current_year - birth_year == age && (garlic_bread == "y" || health_insurance == "y")
      result = "Probably not a vampire..."
  elsif current_year - birth_year != age && (garlic_bread == "n" || health_insurance == "n")
      result = "Probably a vampire..."
  elsif current_year - birth_year != age && garlic_bread == "n" && health_insurance == "n"
      result = "Almost certainly a vampire..."
  elsif name == "Drake Cula" || name == "Tu Fang" && (current_year - birth_year == age && (garlic_bread = "y" || health_insurance = "y"))
      result = "Definitely a vampire..."
  else
      result = "Results inconclusive."
  end

  puts result

end
