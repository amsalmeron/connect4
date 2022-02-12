class Game
  def initalize(turn)
    @turn = turn
  end

  def play_game
    21.times do
      @turn.prompt
      @turn.place_piece
      @turn.computer
      @turn.check_board
    end
  end
end
