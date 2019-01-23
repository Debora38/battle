feature 'Enter name' do
  scenario 'should enter names' do
    visit('/')
    fill_in :player1, with: 'Debora'
    fill_in :player2, with: 'JJ'
    click_button 'Submit'
    expect(page).to have_content "Debora vs. JJ"
  end
end

feature "Hit Points" do
  scenario "should show Player2 Hit Points to Player1" do
    visit('/')
    fill_in :player1, with: 'Debora'
    fill_in :player2, with: 'JJ'
    click_button 'Submit'
    expect(page).to have_content "Debora vs. JJ (300 hit points)"
  end
end
