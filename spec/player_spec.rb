RSpec.describe Player do
  subject(:player) { Player.new('John')}

  describe '#player' do
    it 'returns name of player' do
      expect(player.name).to eq 'John'
    end
  end
end
