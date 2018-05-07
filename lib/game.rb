require_relative 'player'

class Game
  WEAPONS = [:rock, :paper, :scissors]

  RULES = {
  scissors: { paper: :win, rock: :lose, scissors: :draw },
      rock: { paper: :lose, rock: :draw, scissors: :win },
     paper: { paper: :draw, rock: :win, scissors: :lose }
    }

  attr_reader :player, :user_choice, :computer_choice

  def initialize(player=Player.new, user_choice='scissors')
    @player = player
    @user_choice = user_choice.to_sym
    @computer_choice = random
  end


  def outcome
    RULES[@user_choice][@computer_choice].to_s
  end

  def random
    WEAPONS.sample
  end

end
