# run a function that says
# mathematics.factorial(5) = 120

#factorial = 5 * 4 * 3 * 2 * 1

# create a class called math

require 'pry'


class Integer
  def factorial
    return 1 if self <= 1
    self * (self-1).factorial
  end
end

puts 5.factorial