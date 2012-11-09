# create class called Play
# with 2 functions (def) :  walk (instance) method
#  							run (class) method

# "I am walking"    "I am running"

# x.run
# x.walk

require 'pry'

class Play
  def walk 
  	puts "I am walking"
  end

  def run
  	puts "I am running"
  end
end

#instance method
play = Play.new
play.walk

#class method
play1 = Play.run



