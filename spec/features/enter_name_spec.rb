# require 'capybara/rspec'

feature 'Enter name' do
  scenario 'should enter names' do
    sign_in_and_play
    expect(page).to have_content "Debora vs. JJ"
  end
end

feature "Hit Points" do
  scenario "should show Player2 Hit Points" do
    sign_in_and_play
    expect(page).to have_content "Debora vs. JJ (#{Player::DEFAULT_HIT_POINTS} hit points)"
  end
end

feature "Attack" do
  scenario "Player 1 attacks player 2" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "#{Player::DEFAULT_HIT_POINTS} hit points"
    expect(page).to have_content "#{Player::DEFAULT_HIT_POINTS - Player::DEFAULT_ATTACK_POINTS} hit points"
  end
end
