def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end 

def input_to_index(input)
  input.to_i - 1
end 

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end 
end 

def valid_move?(board, index)
  if position_taken?(board, index) || !index.between?(0, 8)
    return false
  else
    return true
  end 
end 

def move(board, index, token='X')
  board[index] = token
end 

def turn(board)
  loop do 
    puts "Please enter 1-9:"
    input = gets.strip
    @index = input_to_index(input)  
    break if valid_move?(board, @index)
  end
  move(board, @index, "X")
  display_board(board)
end 