require_relative 'choices'
require_relative 'player'

class Game
  attr_reader :player, :rps
  def initialize(player=Player.new, rps = Choices.new)
    @player = player
    @rps = rps
  end

  def outcome
    @rps.choice.each do |match|
      if match[:user_choice] == @rps.user_choice && match[:computer_choice] == @rps.computer_choice
        return match[:user_outcome]
      end
    end
  end

end
