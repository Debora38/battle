def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Debora'
  fill_in :player2, with: 'JJ'
  click_button 'Submit'
end
