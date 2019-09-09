move = "X"
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i - 1
  return index
end

def move(board, index, move = "X")
  # index = input_to_index(index)
  board[index] = move
  display_board(board)
end

def valid_move?(board, index)
  index = index.to_i
  if board[index] == nil || board[index] == ""
    return false
  end
  if index < 0 || index > 8 || board[index] != " "
    return false
  elsif board[index] == " "
    return true
  else
    return true
  end


  # if board[index] != " "
  #   return false
  # else
  #   return true
  # end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  valid_move?(board, index)
  if valid_move?(board,index) == false
    puts "Please enter 1-9:"
  end
  if(valid_move?(board,index))
    move(board, index)
    display_board(board)
  end


end
