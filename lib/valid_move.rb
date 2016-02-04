# code your #valid_move? method here
def valid_move?(board, position)
  #puts "Welcome to Tic Tac Toe!"
  #puts "Please enter where you would like to move (1 - 9)"
  #position = get.strip
  position = position.to_i
  position = position - 1
 
  if position_taken?(board, position) || !(position.between?(0, 8))
    false
  else
    true
  end
end  


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end