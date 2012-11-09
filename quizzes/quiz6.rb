#array of all numbers
(250..750) #this is a range from 250 t0 750

(250..750).to_a #this is a range converted into an array

numbers = (250..750).to_a #array stored in a variable

3.odd? # this returns true in pry

numbers.select{|n| n.odd?} #selects the odd numbers in the array

# oddnumbers = numbers.reject{|n| n.even?}  #stored in a new variable

oddnumbers = numbers.select{|n| n.odd?}		#odd numbers stored in an new array

answer = oddnumbers.inject(&:+)

total = 0
oddnumbers.each{|n| total = total + n}
# total = sum of the odd numbers

puts oddnumbers
puts answer


