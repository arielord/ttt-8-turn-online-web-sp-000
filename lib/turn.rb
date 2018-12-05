def display_board(board)
  
end

def valid_move?(board, index)
  !position_taken?(board, taken)
end

def position_taken?(board, index)
  if index > 8
    true
  end
  
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
  
end

def move(board, index, token)
  
end