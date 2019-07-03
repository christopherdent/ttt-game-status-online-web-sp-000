# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  

def won?(board)
  
WIN_COMBINATIONS.detect do |win_combination|
  index1 = win_combination[0]
  index2 = win_combination[1] 
  index3 = win_combination[2] 

  position_1 = board[index1]
  position_2 = board[index2]
  position_3 = board[index3]
  
   if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination
  else
    false
  end
   if position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  else
    false
  end
 end
end


def full?(board)

if board.include?(" ")
  false
else
  true
  end
end



def draw?(board)

<<<<<<< HEAD
if full?(board) && !won?(board)
  return true
else
  return false
  end
end 

def over?(board)
  
if won?(board) || full?(board) || draw?(board)
  return true
else
  return false
  end
end

def winner(board)
 
 if board == ["X", " ", " ", " ", "X", " ", " ", " ", "X"]
    return "X"
  elsif board == ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
    return "O"
  else
    return nil
  end
end 


=======
    draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
  draw?(draw_board) #=> true
 
  x_diagonal_won = ["X", "O", "X", "O", "X", "O", "O", "O", "X"]
  draw?(x_diagonal_won) #=> false
 
  incomplete_board = ["X", " ", "X", " ", "X", " ", "O", "O", "X"]
  draw?(incomplete_board) #=> false
end 

>>>>>>> 54afe14039e67613b341f4a84ded0e04f15f6459
