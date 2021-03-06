# Virus Predictor

# I worked on this challenge [by myself].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative allows a developer to access files that are in relation to the file containing the require_relative statement. Often used for files not intended for outside use such as test data. For require you would have to give the full path to the file.

require_relative 'state_data'

class VirusPredictor

#This instance method is creating attributes for state, population, and population density. The attributes allow a developer access to these variable through the class VirusPredictor's instance methods.

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#This instance method is passing in multiple attributes to a condensed form in relation to predicted deaths and the speed of spread

  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private

#This instance method is taking the attribute of population density and and setting the number of deaths in proportion to the population times a decimal and roudning that number down with the .floor method. Here we are setting the number of deaths to a state by population density and printing.

# Instance variables do not require arguments to be passed

  def predicted_deaths # (population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# This instance method is calculating the speed of thread by setting the value of speed in relation to the population density. This method also prints onto a new line.

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 #name variables more specific

  STATE_DATA.each do |key, value|
  state = VirusPredictor.new(key, value[:population_density], value[:population])
  state.virus_effects
end

=begin
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end


#=======================================================================
# Reflection Section

#1. What are the differences between the two different hash syntaxes shown in the state_data file?
# One is a long hand syntax, using the rocket operator and the other is shorthand using the colon.
#2. What does require_relative do? How is it different from require?
# require_relative allows a developer to access files that are in relation to the file containing the require_relative statement. Often used for files not intended for outside use such as test data. It is different from require because require often loads data that has been downloaded and made available in your system. require does not offer a good solution for loading files within the project’s code.
#3. What are some ways to iterate through a hash?
# Use .each in a do/end loop.
# Use .sort on a hash and then use .each to iterate through the now nested arrays
#using each_key or each_value
#4. When refactoring virus_effects, what stood out to you about the variables, if anything?
# I don't think I have the concept of refractoring down well yet. However, I will go over this with me guide during my code review.
#5. What concept did you most solidify in this challenge?
# This challenge mostly solidfied the use of classes and attributes. It was really great in showing me how they work and demonstrating the capabilities of them.