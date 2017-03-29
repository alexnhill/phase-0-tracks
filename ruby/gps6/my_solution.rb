# Virus Predictor

# I worked on this challenge [by myself, with: Jermaine Webb].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative: a path defined to access a file that lives within the local directory.
# require: path to load an external file or dependency.
require_relative 'state_data'

class VirusPredictor

  #Initialize VirusPredictor for each instance (kicking off the creation of an instance, creating states for when we create a new instance of the class)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @state_density = state_of_origin, population_density
  end

  #The method virus_effects calls the below methods and passes in the instance vars as arguments
  def virus_effects
    predicted_deaths(@state_density, @population)
    speed_of_spread(@state_density)
  end

  private

  #The method predicted_deaths evaluates the predicted number of deaths from the arguments passed in and returns the result state by state
  def predicted_deaths(state_density, population)
    # predicted deaths is solely based on population density
    number_of_deaths = ''
    hash = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}

    hash.each do |density, float|
      if @population_density >= density
        number_of_deaths = (@population * float).floor
       else
         number_of_deaths = (@population * 0.05).floor
      end
      number_of_deaths
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #The method speed_of_spread calculates a value of the speed at which the virus would spread through the state and population density information and prints this.
  def speed_of_spread(state_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    hash = {200=>0.5, 150=>1, 100=>1.5, 50=>2}

    hash.each do |density, float|
      if @population_density >= density
        speed = float
      else
        speed = 2.5
      end
      speed
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_info|
  current_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  current_state.virus_effects
 end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file? 
  # The two different syntaxes show an example of using a string with a hash rocket and an example of using a symbol to pair the key and value.
# What does require_relative do? How is it different from require?
  #Require-relative links the file to another file locally in the directory it is found in. Require defines a path to an external file or dependency. Require_relative links to a file that is usually something that is written by the developer who is linking the files. Require is typically used when linking to external libraries or dependencies.
# What are some ways to iterate through a hash?
  #Some ways to iterate through a hash include:
    # - .each: iterates through each value in a data structure, performs any operations in a block and returns the original data structure.
    # - .select: iterates through a hash and returns a new hatch with contents that match whatever condition is specified in the block.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # We were searching for repetition as the prompt asked us to refactor in a DRY way. I noticed that there were duplicates of two of the instance variables so we refactored the program to have two of the variables (state_of_origin and population_density) to live under one variable, @state_density.
# What concept did you most solidify in this challenge?
  #Refactoring the program to replace the if else statements in the predicted_deaths and speed_of_spread methods really helped to solidify my understanading of how multi-faceted iterators can be.

