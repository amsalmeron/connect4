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
      @board[:row6][0] = 'X'
    end
    #binding.pry
    p @board[:row0]
    p @board[:row1]
    p @board[:row2]
    p @board[:row3]
    p @board[:row4]
    p @board[:row5]
    p @board[:row6]
  end

end
