require 'player'

RSpec.describe Player do

  context "#name" do
    it "should return its name" do
      player1 = Player.new("Debora")
      expect(player1.name).to eq "Debora"
    end
  end
end
