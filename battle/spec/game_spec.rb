require 'game'

describe Game do
subject (:game) {described_class.new(player1, player2)}
let (:player1) { double :player1, receive_damage: true }
let (:player2) { double :player2, receive_damage: true }

  describe '#attack' do
    it 'damages player 2' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
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
end
