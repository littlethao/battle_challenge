require 'player'

describe Player do

subject (:matt) {described_class.new("Matt")}
subject (:thao) {described_class.new("Thao")}

  it 'returns its name' do
    expect(matt.name).to eq "Matt"
  end

  it 'returns its hitpoint' do
    expect(matt.hitpoint).to eq 100
  end

  describe '#receive_damage' do
    it 'reduces the hitpoint by 10 following attack on player 2' do
      thao.receive_damage
      expect(thao.hitpoint).to eq 90
    end
  end

  describe '#lost_game?' do
    it 'shows that player 2 has lost' do
      10.times {matt.receive_damage}
      expect(matt.lost_game?).to be true
    end
  end
end
