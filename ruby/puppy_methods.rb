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

Puppy.new
spot = Puppy.new
spot.speak(3)
spot.roll_over
puts spot.dog_years(3)
spot.down
