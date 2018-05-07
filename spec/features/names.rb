RSpec.feature 'name_form' do

  scenario 'Page displays name' do
    sign_in_and_play
    expect(page).to have_content 'John'
  end
  scenario 'Page doesnt display name' do
    sign_in_and_play
    expect(page).to_not have_content 'Sam'
  end

  scenario 'Choose scissors move and return move' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content 'Your move was scissors'
  end

  scenario 'Choose rock move and not to return wrong move' do
    sign_in_and_play
    click_button('rock')
    expect(page).to_not have_content 'Your move was scissors'
  end

end
