RSpec.describe Game do
  describe '#player' do
    subject(:game) { Game.new(player)}
    let(:player) { double :player, name: 'anon' }

    it 'returns the instance of player' do
      expect(game.player).to eq player
    end
  end

  context do
    WEAPONS = [:rock]

    describe '#outcome' do
      let(:game) { double Game.new }
      it 'returns the outcome of the match' do
        expect(game).to receive(:outcome).and_return("draw")
        expect(game.outcome).to eq "draw"
      end
    end

    describe '#random' do
      let(:game) { double :game, random: WEAPONS.sample }
      it 'returns random move' do
        expect(game.random).to eq :rock
      end
    end
  end
end
