# 1. ask user which disc to move
# 2. ask user which column to move disc to
# 3. run function to move (disc number, column number)

require 'pry'

def create_board(x)

	array1=[]
	array2=[]
	array3=[]

	(1..x).each {|i| array1.push(i.to_s)} 
	array1.reverse!

	board = [array1,array2,array3]

	return board
end

def print_board (board)
	array1 = board[0]
	array2 = board[1]
	array3 = board[2]
	puts "- #{array1.join(' ')}"
	puts "- #{array2.join(' ')}"
	puts "- #{array3.join(' ')}"
end

def ask_for_move(board) #disc = 5, column = 2

	puts "Please enter disc you want to move followed by column (ex. 3,2)"
	input = gets.chomp.split(',')
	disc = input[0].to_i
	column = input[1].to_i

	array1 = board[0]
	array2 = board[1]
	array3 = board[2]

	if array1.last==disc
		if disc>board[column-1].last
			puts "move is illegal" 
		else
			array1.pop()
			board[column-1].push(disc)
		end
	elsif array2.last==disc
		if disc>board[column-1].last
			puts "move is illegal" 
		else
			array2.pop()
			board[column-1].push(disc)
		end
	elsif array3.last==disc
		if disc>board[column-1].last
			puts "move is illegal" 
		else
			array3.pop()
			board[column-1].push(disc)
		end

	end
end

puts "Welcome to Hanoi"
puts "How many discs?"
discs = gets.to_i

board = create_board(discs)
print_board(board)


response = "y"
while response != "q"
	ask_for_move(board)
	print_board(board)
end

binding.pry
