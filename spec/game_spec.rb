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

  context 'players get error messages for invalid moves' do
    it 'player_x should get an error if they try and take a populated space' do
      allow(subject).to receive(:position_taken?).and_return true
      expect { subject.player_x(1) }.to raise_error 'invalid move: position already taken!'
    end

    it 'player_o should get an error if they try and take a populated space' do
      allow(subject).to receive(:position_taken?).and_return true
      expect { subject.player_o(1) }.to raise_error 'invalid move: position already taken!'
    end
  end

  context 'knowing the outcome of a game' do
    it 'should know when the result is a draw' do
      fill_the_board_draw
      expect(subject.result?).to eq 'its a draw!'
    end
  end

end
