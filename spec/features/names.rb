RSpec.feature 'name_form' do

  scenario 'Page displays name' do
    sign_in_and_play
    expect(page).to have_content 'John'
  end
  scenario 'Page displays name' do
    sign_in_and_play
    expect(page).to_not have_content 'Sam'
  end

end
