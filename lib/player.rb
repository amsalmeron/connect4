require 'pry'


class Player
  attr_reader :column

  def initialize(board)
    @board = board
  end

  def move
    puts "Select column A-G:"
    # @column = gets.chomp
    column = "a"
    if column == "a"
      #change :row6 => [0] to X
      @board.board[:row6][0] = 'X'
      puts @board
    end
  end

end
