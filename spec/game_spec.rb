RSpec.describe Game do
  let(:choices) { double :choices, choice: rps,
                  user_choice: 'rock',
                  computer_choice: 'paper' }

  let(:player) { double :player, name: 'anon' }
  subject(:game) { Game.new(Player.new, choices) }

  let(:rps) {
    [
      {user_choice: "rock",
      computer_choice: "paper",
      user_outcome: :lose},
      ]
  }

  describe '#player' do
    subject(:game_instance) { Game.new(player)}
    let(:player) { double :player, name: 'anon' }

    it 'returns the instance of player' do
      expect(game_instance.player).to eq player
    end
  end

  describe '#outcome' do
    it 'returns the outcome of the match' do
      expect(game.outcome).to eq :lose
    end
  end

end
