RSpec.describe Choices do
  describe '#choice' do
    it 'is an array' do
      expect(subject.choice).to be_an Array
    end
    it 'has hashes in the array' do
      expect(subject.choice[0]).to be_an Hash
    end
  end

  describe '#user_choice' do
    it 'the input is a string' do
      expect(subject.user_choice).to be_an String
    end
  end

  describe '#computer_choice' do
    subject(:random_choice) { double :random_choice, computer_choice: computer_choice }
    let(:computer_choice) { ['scissors'].sample }

    it 'returns a random choice from the avaliable moves' do
      expect(random_choice.computer_choice).to eq 'scissors'
    end
  end
end
