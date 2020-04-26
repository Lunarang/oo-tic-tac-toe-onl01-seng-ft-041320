class TicTacToe 

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
    puts "#{@board}" 
  end
  
  def input_to_index(number)
    position = @board[number+1]
  end
  
  def move(number, token=X)
    input_to_index(number)
    position.gsub 
  end 
  
  def valid_move?(position)
    
  end
  
  def turn
    ask for input
    get input
    translate input into index
    if index is valid
      make the move for index
      show the board
    else
      ask for input again
  end
  
  def turn_count
    
  end
  
  def current_player
    
  end
  
  def won?
    
  end
  
  def full?
    
  end
  
  def draw?
    
  end
  
  def over? 
    
  end
  
  def winner
    
  end
  

end
