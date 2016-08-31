require 'game'

describe Game do

  subject(:game) {described_class.new(person, person)}
  let(:person) {double(:person, receive_damage: true)}

  it 'tells person to receive damage' do
    expect(person).to receive(:receive_damage)
    game.attack(person)
  end

end
