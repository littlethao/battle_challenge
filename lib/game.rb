class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @over = false
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack
    other_player.receive_damage
    @over = true if check_hp
    switch_turns
  end

  def current_turn
    @current_turn
  end

  def over?
    @over
  end

  private

  def switch_turns
    @current_turn = @players.select{|player| player != @current_turn}.pop
  end

  def other_player
    @players.select{|player| player != @current_turn}.pop
  end

  def check_hp
    other_player.dead?
  end

end
