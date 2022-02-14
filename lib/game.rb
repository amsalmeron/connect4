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

    @menu_selection = gets.chomp
    if @menu_selection == "p"
      @board.render
      until @endgame == true
        player_turn
        computer_turn
      end
    elsif @menu_selection == "q"
    end
  end

  def play_game
    start_game
    until @menu_selection != "p"
      while @turn.endgame != true
        player_turn
        computer_turn
      end

      start_game
      @turn.endgame = nil
    end

    # begin
    #   while @turn.endgame != true
    #     player_turn
    #     computer_turn
    #   end
    #   start_game
    #   @endgame = nil
    # rescue
    #   retry if @menu_selection == "p"
    # end

    # while @turn.endgame != true
    #   player_turn
    #   computer_turn
    # end
  end
end
