require 'pry'


class Board
  attr_reader :columns
  def initialize
    @columns = {
      "A" => [".", ".", ".", ".", ".", "."],
      "B" => [".", ".", ".", ".", ".", "."],
      "C" => [".", ".", ".", ".", ".", "."],
      "D" => [".", ".", ".", ".", ".", "."],
      "E" => [".", ".", ".", ".", ".", "."],
      "F" => [".", ".", ".", ".", ".", "."],
      "G" => [".", ".", ".", ".", ".", "."]
    }
  end

  def render
    p @columns.keys.join
    rows = @columns.values.transpose
    rows.each do |row|
      p row.join
    end
  end
end
b = Board.new
b.render
