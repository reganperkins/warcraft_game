require_relative 'unit'

class Siege_Engine < Unit

  def initialize
    @health_points = 400
    @attack_power = 50
  end

  def attack!(enemy)
    if enemy.is_a? Siege_Engine
      enemy.damage(@attack_power)
    elsif enemy.is_a? Barracks 
      enemy.damage(@attack_power * 4) 
    else
      false
    end
  end

  def can_build_engine?
    if (gold >= 200) && (food >= 3) && (lumber >= 60)
      true
    end
  end

  def build_new
    if can_build_engine
      @gold -= 200
      @lumber -= 60
      @food -= 3
      Siege_Engine.new
    end
  end

end