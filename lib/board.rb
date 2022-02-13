require "pry"

class Board
  attr_reader :columns, :rows
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
    puts @columns.keys.join
    @rows = @columns.values.transpose.reverse
    @rows.each do |row|
      puts row.join
    end
  end
end
