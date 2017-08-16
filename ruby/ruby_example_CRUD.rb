movies = {
  the_lion_king: 4
  }

puts "What would you like to do? (add/update/display/delete)"
choice = gets.chomp

case choice
  when "add"
  puts "What move would you like to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "How would you rate this movie?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "You have added #{title} with a rating of #{rating}!"
   else
    puts "This movie is already added!"
  end
  when "update"
  puts "What movie would you like to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "This movie does not exist in this list yet! Cannot update."
    else
    puts "What is the new rating?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end
  when "display"
  movies.each { |title, rating|
    puts "#{title}: #{rating}"}
  when "delete"
  puts "What is the movie you would like to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "This movie does not exist in this list yet! Cannot delete."
  else
    movies.delete(title)
    puts "This movie has been deleted!"
  end
  else
  puts "Error!"
end
