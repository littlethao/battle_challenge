require 'game'

describe Game do

  subject(:game) {described_class.new(person1, person2)}
  let(:person1) {double(:person1, receive_damage: true)}
  let(:person2) {double(:person2, receive_damage: true)}

  it 'tells person to receive damage' do
    expect(person1).to receive(:receive_damage)
    game.attack(person1)
  end

  it 'knows which players turn it is' do
    expect(game.current_turn).to eq person1
  end

  it 'can switch turns' do
    game.attack(person1)
    expect(game.current_turn).to eq person2
  end
end
