class Game
  def initialize(turn)
    @turn = turn
  end

  # def play_game
  #   until @turn.endgame == true
  #     @turn.prompt
  #     @turn.place_piece
  #     @turn.check_endgame
  #     # @turn.check_vert_win
  #     # @turn.check_horz_win
  #     # @turn.check_diag_win
  #     # @turn.check_tie
  #     @turn.computer
  #     @turn.check_endgame
  #     # @turn.check_vert_win
  #     # @turn.check_horz_win
  #     # @turn.check_diag_win
  #     # @turn.check_tie
  #   end
  # end

  def player_turn
    @turn.prompt
    @turn.place_piece
  end

  def computer_turn
    @turn.computer
  end

  def start_game
    puts "Welcome to CONNECT FOUR"
    puts "Enter p to play. Enter q to quit."
    puts "---------------------------------"

    menu_selection = gets.chomp
    if menu_selection == "p"
      board = Board.new
      turn = Turn.new(board)
      game = Game.new(turn)

      board.render
    end

    def play_game
      start_game
      player_turn
      @turn.check_endgame
      if @endgame == true
        start_game
      computer_turn
      @turn.check_endgame
    end
  end
end
