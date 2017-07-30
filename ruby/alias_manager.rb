=begin
  Pseudocode:
1. Establish the first and last name
  - string
2. Use the .split method to separate "Felicia Torres" to "Felicia" "Torres"
3. Reverse the first and last name to create "Torres" "Felicia".
  - .reverse
4. Join the first and last name together to create "Torres Felicia"
  -.join
5. Split each character to create an array.
6. Employ a method to move vowels to the next letter of vowels
7. Employ a method to move each constenant to the next consenant
  - For 6 & 7 maybe using some combination of .next and index?
=end

    def vowel_adv(str)
      puts "What is your name?"
      name = gets.chomp.downcase.reverse
      vowels = ["a", "e", "i", "o", "u"]
      cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
      str = name.split('')
      str_new = str.map! do |char|
        if vowels.include?(char)
          vowels.rotate(1)[vowels.index(char)]
        elsif cons.include?(char)
         cons.rotate(1)[cons.index(char)]
        else
          char
        end
    end
  puts "Your secret agent name is:"
  str_new.join.reverse.split.map(&:capitalize).reverse.join(' ')
  end
  puts vowel_adv "aeiou"
loop do
  puts "Are you happy with your secret agent name? (y/n)"
   user_input = gets.chomp
  if user_input == "n"
       def vowel_adv(str)
        puts "What is your name?"
        name = gets.chomp.downcase.reverse
        vowels = ["a", "e", "i", "o", "u"]
        cons = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        str = name.split('')
        str_new = str.map! do |char|
          if vowels.include?(char)
          vowels.rotate(1)[vowels.index(char)]
          elsif cons.include?(char)
         cons.rotate(1)[cons.index(char)]
          else
            char
          end
        end
    puts "Your secret agent name is:"
    str_new.join.reverse.split.map(&:capitalize).reverse.join(' ')
        end
    puts vowel_adv "aeiou"
  else
    break if user_input == "y"
  end
end
puts "Congratulations on your new secrent agent name!"