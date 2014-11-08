require_relative 'unit'

class Footman < Unit
  def initialize
    super(60, 10)
  end

  # def damage(attack_power)
  #   @health_points -= attack_power
  # end

  # def attack!(enemy)
  #   enemy.damage(attack_power)
  # end

end
