require 'player'

describe Player do

  subject(:player) {described_class.new('Bob')}

  it 'returns its name' do
    expect(player.name).to eq "Bob"
  end

  it "returns the player/'s hitpoint" do
    expect(player.hitpoint).to eq 100
  end

  it "reduces the player/'s hitpoint by 10 following attack" do
    player.receive_damage
    expect(player.hitpoint).to eq 90
  end

  it 'returns dead if hp == 0' do
    10.times{player.receive_damage}
    expect(player.dead?).to eq true
  end
end
