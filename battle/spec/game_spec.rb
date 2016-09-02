require 'game'

describe Game do
subject (:game) {described_class.new(player1, player2)}
let (:player1) { double :player1, receive_damage: true }
let (:player2) { double :player2, receive_damage: true }

  describe '#attack' do
    it 'damages player 2 i.e. opponent' do
      expect(player2).to receive(:receive_damage)
      game.attack
    end
  end

  describe '#current_player' do
    it 'has the initial current player as Player 1' do
      expect(game.current_player).to eq player1
    end

    it 'changes current player to player 2 following switch turn' do
      game.switch_turn
      expect(game.current_player).to eq player2
    end

    it 'changes current player to player 2 following switch turn' do
      game.switch_turn
      game.switch_turn
      expect(game.current_player).to eq player1
    end
  end

  describe '#opponent' do
    it 'initially opponent should be player 2' do
      expect(game.opponent).to eq player2
    end

    context 'post attack' do
      it 'should have opponent as player 1' do
        game.attack
        expect(game.opponent).to eq player1
      end
    end
  end

  describe '#game_over?' do
    before do
      allow(player1).to receive(:lost_game?).and_return(true)
      allow(player2).to receive(:lost_game?).and_return(false)
    end
    it 'to be true if either player has lost' do
      expect(game.game_over?).to eq true
    end
  end
end
