class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
    switch_turns
  end

  def current_turn
    @current_turn
  end

  private

  def switch_turns
    @current_turn = @players.select{|player| player != @current_turn}.pop
  end

end
