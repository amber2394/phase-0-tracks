def say_goodbye
  puts "Goodbye now!"
  yield("Tanya", "Lawrence")
end

say_goodbye{ |name1, name2| puts "Have a good night #{name1} and #{name2}!" }