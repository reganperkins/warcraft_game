class Barracks < Unit
  attr_accessor :gold, :food, :lumber

  def initialize
    super(500, 0)
    @gold = 1000
    @lumber = 500
    @food = 80
  end

  def can_train_footman?
    if (gold >= 135) && (food >= 2)
      true
    end
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def can_train_peasant?
    if (gold >= 90) && (food >= 5)
      true
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def damage(attack_power)
    @health_points -= (attack_power / 2).ceil
  end


end

@barrack = Barracks.new
puts @barrack.damage(11)