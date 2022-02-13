class Game
  def initialize(turn)
    @turn = turn
  end

  def play_game
    21.times do
      @turn.prompt
      @turn.place_piece
      @turn.check_vert_win
      @turn.check_horz_win
      @turn.computer
      @turn.check_vert_win
      @turn.check_horz_win
      @turn.check_tie
    end
  end
end
