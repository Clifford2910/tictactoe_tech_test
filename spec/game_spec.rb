require 'game'
require 'web_helpers'

describe Game do
  subject(:game) { described_class.new }

  context 'players can make moves' do
    it 'player_x can make a move on the board' do
      subject.player_x(1)
      expect(subject.board).to eq(['X', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end

    it 'player_o can make a move on the board' do
      subject.player_o(1)
      expect(subject.board).to eq(['O', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '])
    end
  end

end
