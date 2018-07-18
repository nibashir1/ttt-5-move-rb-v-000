def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(string)
  return string.to_i - 1
end

def position_taken?(array, index)
  if (array[index] == " " || array[index] == "" || array[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(array, index)
  if (index < 0 || index > 8)
    return false
  elsif position_taken?(array, index)
    return false
  else
    return true
  end
end

def move(array, index, char = "X")
  if ( valid_move?(array, index) )
    array[index] = char
    return array
  else
    #do nothing
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  puts input
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

puts "Welcome to Tic Tac Toe!"

move(board, 4, "O")
move(board, 4, "X")
move(board, 5, "X")
move(board, 5, "O")

display_board(board)

turn(board)
