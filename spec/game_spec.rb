require 'game'

describe Game do

  subject(:game) {described_class.new(person1, person2)}
  let(:person1) {double(:person1, receive_damage: true, dead?: false)}
  let(:person2) {double(:person2, receive_damage: true, dead?: false)}

  it 'tells person to receive damage' do
    expect(person2).to receive(:receive_damage)
    game.attack
  end

  it 'knows which players turn it is' do
    expect(game.current_turn).to eq person1
  end

  it 'can switch turns' do
    game.attack
    expect(game.current_turn).to eq person2
  end
  context 'player is dead' do
    let(:person2) {double(:person1, receive_damage: true, dead?: true)}
    it 'knows when a player is dead' do
      game.attack
      expect(game.over?).to eq true
    end
  end
end
