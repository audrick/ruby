#array of all numbers
numbers = (250..750).to_a

#array of odd numbers
oddnumbers = numbers.reject{|n| n.even?}

numbers.map{|n| n}.inject(&:+)


puts oddnumbers
