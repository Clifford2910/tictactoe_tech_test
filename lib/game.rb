class Game

  attr_reader :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def player_x(pos)
    raise 'invalid move: position already taken!' if position_taken?(pos)
    @board[pos - 1, 1] = 'X'
    @board
  end

  def player_o(pos)
    raise 'invalid move: position already taken!' if position_taken?(pos)
    @board[pos - 1, 1] = 'O'
    @board
  end

  def position_taken?(pos)
    @board[pos - 1] != ' '
  end

  def result?
    if player_x_has_won? == true
      return 'player X wins!'
    elsif player_o_has_won? == true
      return 'player O wins!'
    elsif @board.include?(' ') == false
      return 'its a draw!'
    else
      return 'next players turn!'
    end
  end

  def player_x_has_won?
    true if @board[0] == 'X' && @board[1] == 'X' && @board[2] == 'X'
  end

  def player_o_has_won?
    true if @board[0] == 'O' && @board[1] == 'O' && @board[2] == 'O'
  end

end
