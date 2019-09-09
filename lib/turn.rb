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

def position_taken?(board,index)
  if board[index] == nil || board[index] == ""
    return true
  end
  index = index.to_i
  if board[index] != " "
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  index = index.to_i
  if index < 0 || index > 8  || board[index] != "X" || board[index] != "O"
    return false
  elsif board[index] == " " || board[index] == "" || board[index] == nil || index > 0 && index < 8
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
  until valid_move?(board,index)
    puts "Please enter 1-9:"
  end
  if valid_move?(board,index)
    move(board, input_to_index(index))
    display_board(board)
  end

end
