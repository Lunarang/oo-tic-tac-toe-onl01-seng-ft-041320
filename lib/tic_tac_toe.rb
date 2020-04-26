class TicTacToe 
  attr_accessor :board 
  
  def intitialize 
    @board = ["", "", "", "", "", "", "", "", ""]
  end
  
  WIN_COMBINATIONS = [
    [0,1,2], # Top row 
    [3,4,5], # Middle row 
    [6,7,8], # Bottom row 
    [0,3,6], # Left column 
    [1,4,7], # Middle column 
    [2,5,8], # Right column
    [0,4,8], # Diagonal 1 
    [2,4,6] # Diagonal 2 
    ]
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} " 
  end
  
  def input_to_index (number)
    position = @board[number+1]
    position
  end
  
  def move (number, token="X")
    input_to_index(number) = token
  end 
  
  def position_taken? (number)
    if input_to_index(number).include? ("X" || "O")
      TRUE
    else
      FALSE
    end
  end
      
  def valid_move?(position)
    position.between?(0,8) && (position_taken?(position) == FALSE)
  end
  
  def turn
    puts "What position do you want, (1-9)?" 
    user_input = gets.strip # ask for input
    position = input_to_index (user_input) # get input & translate input into index
    if valid_move?(position) == TRUE 
      move(position, current_player)
      display_board # if index is valid => make the move for index & show the board
    else 
      turn #else => ask for input again
    end
  end
  
  def turn_count
    count = 0
    @board.each do |check|
      if check != " " && check != nil
        count += 1
      end
    end
    count
  end
  
  def current_player
    turn_count.even? ? "X" : "O"
  end
  
  def won?
    
  end
  
  def full?
    @board.all? {|check| check != " "}
  end
  
  def draw?
    full? && !won? 
  end
  
  def over? 
    full? || won? || draw?
  end
  
  def winner
    won? ? @board[won?[0]] : nil
  end
  

end
