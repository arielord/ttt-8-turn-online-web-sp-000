def display_board(board)
  puts " #{player_input[0]} | #{player_input[1]} | #{player_input[2]} "
  puts "-----------"
  puts " #{player_input[3]} | #{player_input[4]} | #{player_input[5]} "
  puts "-----------"
  puts " #{player_input[6]} | #{player_input[7]} | #{player_input[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  else
    !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
  
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  index = input.to_i
  index -= 1
end

def turn(board)
  puts "Please enter 1-9"
  input = gets.strip
  index = input_to_index(input)
  
  position_taken = position_taken?(board, index)
  valid_move = valid_move?(board, index)
  
  until !position_taken && valid_move do
    puts "Please enter 1-9"
    input = gets.strip
    index = input_to_index(input)
    position_taken = position_taken?(board, index)
    valid_move = valid_move?(board, index)
  end
  
  move(board, index)
  
  display_board(board)
end