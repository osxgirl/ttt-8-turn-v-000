def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  move=move.to_i-1
end

def move(array, index, value="X")
  array[index]=value
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
      taken = false
    elsif board[index] == "X" || board[index] == "O"
      taken = true
end
end

def valid_move?(board, index)
  if index == nil || index < 0 || index > 8
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end


def turn_count(board)
  count = 0
  board.each do |index|
    if index != " "
      count += 1
    end
  end
    count
 end

def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end


def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip 
    index = input_to_index(userInput)
    if !valid_move?(board, index)
      turn(board)
    else
      move(board, index, current_player(board))
    end
  display_board(board)
end
