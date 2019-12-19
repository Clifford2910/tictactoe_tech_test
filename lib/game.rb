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

end
