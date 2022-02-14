class Game
  def initialize(turn, board)
    @turn = turn
    @board = board
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
    @turn.check_endgame
  end

  def computer_turn
    @turn.computer
    @turn.check_endgame
  end

  def start_game
    puts "Welcome to CONNECT FOUR"
    puts "Enter p to play. Enter q to quit."
    puts "---------------------------------"

    menu_selection = gets.chomp
    if menu_selection == "p"
      @board.render
    end
  end

  def play_game
    start_game
    loop do
      player_turn
      if @endgame == true
        break
      end
      computer_turn
      if @endgame == true
        break
      end
    end
  end
end
