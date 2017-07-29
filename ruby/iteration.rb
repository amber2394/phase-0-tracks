=begin
def say_goodbye
  puts "Goodbye now!"
  yield("Tanya", "Lawrence")
end


say_goodbye{ |name1, name2| puts "Have a good night #{name1} and #{name2}!" }
=end


#arry and .each
actors = ["Ben Affleck", "Christian Bale", "George Clooney", "Val Kilmer", "Michael Keaton" ]
new_actors = []

puts "Original Data:"
p actors
p new_actors

actors.each do |actor|
  new_actors << actor.upcase
end

puts "After .each call:"
p actors
p new_actors

#hash and .each
actors = {"Ben Affleck" => "Batman vs Superman 2016", "Christian Bale" => "Batman Begins 2005, The Dark Knight 2008, The Dark Knight Rises 2012", "George Clooney" => "Batman & Robin 1997", "Val Kilmer" => "Batman Forever 1995", "Michael Keaton" => "Batman 1989"}

puts "Original data:"
p actors

puts "After .each call"
actors.each do |actor, movie|
  puts "#{actor} played Batman in the movie #{movie}!"
end


#array and .map!
actors = ["Ben Affleck", "Christian Bale", "George Clooney", "Val Kilmer", "Michael Keaton" ]

puts "Original Data:"
p actors

actors.map! do |actor|
  puts actor
  actor.downcase
end

puts 'After .map! call:'
p actors

=begin
**Turns hash results in an array
#hash and .map
actors = {"Ben Affleck" => "Batman vs Superman 2016", "Christian Bale" => "Batman Begins 2005, The Dark Knight 2008, The Dark Knight Rises 2012", "George Clooney" => "Batman & Robin 1997", "Val Kilmer" => "Batman Forever 1995", "Michael Keaton" => "Batman 1989"}

puts "Original data:"
p actors

puts "After .map call:"
actors.map do |actor, movie|
  puts "#{actor} played Batman in the movie #{movie}!"
  actor.downcase
  movie.upcase
end
=end