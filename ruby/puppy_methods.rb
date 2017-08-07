class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof!" * num
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(num)
    return num * 7
  end

  def down
    puts "*lays down*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end
end

=begin

DRIVER CODE:

spot = Puppy.new
spot.speak(3)
spot.roll_over
puts spot.dog_years(3)
spot.down

=end

class Bunny

  def hop
    puts "*hops around*"
  end

  def eats_carrots(num)
    puts "The bunny has eaten #{num} carrots!"
  end

  def initialize
    puts "Initializing a new bunny instance!"
  end
end

rufus = Bunny.new
rufus.hop
rufus.eats_carrots(3)

bunny_array = []

50.times do
  lonnie = Bunny.new
  bunny_array.push(lonnie)
end

bunny_array.each do |new_bunny|
  new_bunny.hop
  new_bunny.eats_carrots(2)
end