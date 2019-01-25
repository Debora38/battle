class Player

  attr_reader :name
  attr_accessor :hit_points

  DEFAULT_HIT_POINTS = 300
  DEFAULT_ATTACK_POINTS = 10

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.hit_points -= DEFAULT_ATTACK_POINTS
  end
end
