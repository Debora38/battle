feature 'Enter name' do
  scenario 'should enter names' do
    visit('/')
    fill_in :player1, with: 'Debora'
    fill_in :player2, with: 'JohnBob'
    click_button 'Submit'
    expect(page).to have_content "Debora vs. JohnBob"
  end
end
