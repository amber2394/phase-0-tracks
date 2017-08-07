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
end

Puppy.new
spot = Puppy.new
spot.fetch(ball)
