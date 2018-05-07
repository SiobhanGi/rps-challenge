RSpec.feature 'name_form' do
  scenario 'Successfully enter name' do
    visit '/name_form'
    fill_in 'name', :with => 'John'
    click_button 'Submit'
  end
end
