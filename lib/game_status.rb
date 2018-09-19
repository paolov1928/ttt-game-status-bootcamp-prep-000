# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #TopRow
  [3,4,5],  #MiddleRow
  [6,7,8], #bottomRow
  [0,3,6], #firstVertical
  [1,4,7], #SecondVert
  [2,5,8], #ThirdVert
  [0,4,8], #FirstDia
  [2,4,6] #SecondDia
]

def won?(board)
WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  position_1 = board[win_index_1] 
  position_2 = board[win_index_2] 
  position_3 = board[win_index_3]
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
  empty_board = board.all? {|x| x == " "}
  if empty_board || full?(board)
      return false
  elsif position_1 == "X" && position_2 == "X" && position_3 == "X"
>>>>>>> c23ec813a5d49a2a9dc55e59f885ddc70c6c1de9
    return win_combination
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  else
    false
  end
  end
<<<<<<< HEAD
  false
=======
>>>>>>> c23ec813a5d49a2a9dc55e59f885ddc70c6c1de9
end

#Full? Method
def full?(board)
<<<<<<< HEAD
  board.none? {|x| x == " "}
=======
  board.none? {|element| element == " "}
>>>>>>> c23ec813a5d49a2a9dc55e59f885ddc70c6c1de9
end

#Draw? Method
def draw?(board)
<<<<<<< HEAD
  if full?(board) && !won?(board)
    return true
  else
    return false
end
end


#over?
def over?(board)
  won?(board) || full?(board) || draw?(board) ? true : false
end

#winner?
#winner
def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
  position_1 = board[win_index_1] 
  position_2 = board[win_index_2] 
  position_3 = board[win_index_3]
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return "X"
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return "O"
  else
    nil
  end
  end
  nil
end


=======
  if won?(board) == false
    true
  else
    false
end
end

#over?
def over?(board)
  won?(board) == true || full?(board) == true|| draw?(board) == true ? true : false
end

#winner
def winner(board)
  if won?(board) == true
    return board[win_index_1]
  else
    nil
end
end
>>>>>>> c23ec813a5d49a2a9dc55e59f885ddc70c6c1de9
