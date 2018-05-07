class Choices
  attr_reader :choice, :user_choice, :computer_choice

  def initialize(user_choice= "scissors")
    @user_choice = user_choice
    @choice = [
      # rock
      {user_choice: "rock", computer_choice: "paper", user_outcome: :lose},
      {user_choice: "rock", computer_choice: "scissors", user_outcome: :win},
      {user_choice: "rock", computer_choice: "rock", user_outcome: :draw},
      # scissors
      {user_choice: "scissors", computer_choice: "paper", user_outcome: :win},
      {user_choice: "scissors", computer_choice: "scissors", user_outcome: :draw},
      {user_choice: "scissors", computer_choice: "rock", user_outcome: :lose},
      # paper
      {user_choice: "paper", computer_choice: "paper", user_outcome: :draw},
      {user_choice: "paper", computer_choice: "scissors", user_outcome: :lose},
      {user_choice: "paper", computer_choice: "rock", user_outcome: :win}
    ]
    end

    def computer_choice
      ["rock", "paper", "scissors"].sample
    end

end
