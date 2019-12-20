# frozen_string_literal: true

class Game
  attr_reader :board

  def initialize
    @board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  end

  def player_x(pos)
    raise 'invalid move: position already taken!' if position_taken?(pos)
    @board[pos - 1, 1] = 'X'
    return @board
  end

  def player_o(pos)
    raise 'invalid move: position already taken!' if position_taken?(pos)
    @board[pos - 1, 1] = 'O'
    return @board
  end

  def position_taken?(pos)
    @board[pos - 1] != ' '
  end

  def result?
    if player_x_has_won_H? == true || player_x_has_won_V? == true || player_x_has_won_D? == true
      'player X wins!'
    elsif player_o_has_won_H? == true || player_o_has_won_V? == true || player_o_has_won_D? == true
      'player O wins!'
    elsif @board.include?(' ') == false
      'its a draw!'
    else
      'next players turn!'
    end
  end

  private

  # all the ways player_x can win a game
  def player_x_has_won_H?
    if @board[0] == 'X' && @board[1] == 'X' && @board[2] == 'X' || @board[3] == 'X' && @board[4] == 'X' && @board[5] == 'X' || @board[6] == 'X' && @board[7] == 'X' && @board[8] == 'X'
      true
    end
  end

  def player_x_has_won_V?
    if @board[0] == 'X' && @board[3] == 'X' && @board[6] == 'X' || @board[1] == 'X' && @board[4] == 'X' && @board[7] == 'X' || @board[2] == 'X' && @board[5] == 'X' && @board[8] == 'X'
      true
    end
  end

  def player_x_has_won_D?
    if @board[0] == 'X' && @board[4] == 'X' && @board[8] == 'X' || @board[2] == 'X' && @board[4] == 'X' && @board[6] == 'X'
      true
    end
  end

  # all the ways player_o can win a game
  def player_o_has_won_H?
    if @board[0] == 'O' && @board[1] == 'O' && @board[2] == 'O' || @board[3] == 'O' && @board[4] == 'O' && @board[5] == 'O' || @board[6] == 'O' && @board[7] == 'O' && @board[8] == 'O'
      true
    end
  end

  def player_o_has_won_V?
    if @board[0] == 'O' && @board[3] == 'O' && @board[6] == 'O' || @board[1] == 'O' && @board[4] == 'O' && @board[7] == 'O' || @board[2] == 'O' && @board[5] == 'O' && @board[8] == 'O'
      true
    end
  end

  def player_o_has_won_D?
    if @board[0] == 'O' && @board[4] == 'O' && @board[8] == 'O' || @board[2] == 'O' && @board[4] == 'O' && @board[6] == 'O'
      true
    end
  end
end
