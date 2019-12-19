# frozen_string_literal: true

def fill_the_board_draw
  game.player_x(1)
  game.player_o(2)
  game.player_x(3)
  game.player_o(4)
  game.player_x(5)
  game.player_o(9)
  game.player_x(8)
  game.player_o(7)
  game.player_x(6)
end

def player_x_winning_move_h
  game.player_x(1)
  game.player_x(2)
  game.player_x(3)
end

def player_x_winning_move_v
  game.player_x(1)
  game.player_x(4)
  game.player_x(7)
end

def player_x_winning_move_d
  game.player_x(3)
  game.player_x(5)
  game.player_x(7)
end

def player_o_winning_move_h
  game.player_o(1)
  game.player_o(2)
  game.player_o(3)
end

def player_o_winning_move_v
  game.player_o(1)
  game.player_o(4)
  game.player_o(7)
end

def player_o_winning_move_d
  game.player_o(3)
  game.player_o(5)
  game.player_o(7)
end
