feature 'Subscribe' do
    scenario 'with valid input' do
      visit root_path
      fill_in 'email', :with => "kam@o2.pl"
      click_on "Subscribe"
      expect(page).to have_content "Thank's for subscribe!"
    end

    scenario 'with invalid input' do
      visit root_path
      fill_in 'email', :with => 'kamkkm'
      click_on "Subscribe"
      expect(page).to_not have_content "Thank's for subscribe!"
    end
end