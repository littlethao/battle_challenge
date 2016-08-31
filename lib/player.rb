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

  def receive_damage
    @hitpoint -= 10
  end

end
