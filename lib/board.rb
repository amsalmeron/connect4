require 'pry'


class Board
  attr_reader :board
  def initialize

    @board = {
            :row0 => ['A','B','C','D','E','F','G'],
            :row1 => [".",".",".",".",".",".","."],
            :row2 => [".",".",".",".",".",".","."],
            :row3 => [".",".",".",".",".",".","."],
            :row4 => [".",".",".",".",".",".","."],
            :row5 => [".",".",".",".",".",".","."],
            :row6 => [".",".",".",".",".",".","."]
          }

            p board[:row0]
            p board[:row1]
            p board[:row2]
            p board[:row3]
            p board[:row4]
            p board[:row5]
            p board[:row6]
  end

end
