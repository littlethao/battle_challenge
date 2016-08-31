class Player

  def initialize(name)
    @name = name
    @hitpoint = 100
  end

  def name
    @name
  end

  def hitpoint
    @hitpoint
  end

  def dead?
    @hitpoint == 0
  end

  def receive_damage
    @hitpoint -= 10
  end

end
