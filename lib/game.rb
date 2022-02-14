class Game
  def initialize(turn, board)
    @turn = turn
    @board = board
  end

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
      @board = Board.new
      @turn = Turn.new(@board)
      @board.render
    elsif @menu_selection != "q"
      puts "Invalid input, restart and try again."
    end
  end

  def play_game
    start_game
    until @menu_selection != "p"
      while @turn.endgame == false
        player_turn
        if @turn.endgame == true
          break
        end
        computer_turn
      end

      start_game
      @turn.endgame = false
    end
  end
end
