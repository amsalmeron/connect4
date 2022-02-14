class Game
  def initialize(turn)
    @turn = turn
  end

  def play_game
    until @turn.endgame == true
      @turn.prompt
      @turn.place_piece
      @turn.check_vert_win
      @turn.check_horz_win
      @turn.check_diag_win
      @turn.check_tie
      @turn.computer
      @turn.check_vert_win
      @turn.check_horz_win
      @turn.check_diag_win
      @turn.check_tie
    end
  end
end
