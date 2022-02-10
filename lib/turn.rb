require 'pry'



class Turn
  attr_reader :prompt, :input

  def initialize(board)
    @board = board
    @input

  end

  def prompt
    puts "Select column A-G: "
    @input = $stdin.gets.chomp
  end

  # def check_input
  #   if @input == "A" || "B" || "C" || "D" || "E" || "F" || "G"
  #     true
  #   else
  #     puts "Invalid selection. Try again."
  #     @input = $stdin.gets.chomp
  #   end
  # end

  def place_piece
    if @input == "A"
      @board.columns["A"][0] = "X"
    end
    @board.render
  end

end
