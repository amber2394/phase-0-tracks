class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at
    puts "#{@reindeer_ranking.rotate(1)}"
  end

#setter method
#  def new_gender=(gender)
#    @gender = gender
#  end

#getter methods
#  def age
#    @age
#   end

#  def ethnicity
#    @ethnicity
#  end
end


=begin

DRIVER CODE

nicholas = Santa.new("female", "black")
nicholas.speak
nicholas.eat_milk_and_cookies("snickerdoodle")
nicholas.age
nicholas.ethnicity
=end

=begin
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
=end


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end


santas = 0
until santas >= 10
puts "Here is your new Santa!:"
p example_genders.sample
p example_ethnicities.sample
p age = rand(0..140)
santas += 1
end