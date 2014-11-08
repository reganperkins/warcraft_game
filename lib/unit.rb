class Unit
  attr_reader :health_points, :attack_power

  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def damage(attack_power)
    @health_points -= attack_power
  end

  def attack!(enemy)
    if enemy.dead? #|| self.dead?
      return 'Looks like someone beat me to it!'
    else
      enemy.damage(attack_power)
    end
  end

  def dead?
    true if health_points <= 0 
  end

end