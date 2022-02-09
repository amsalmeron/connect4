require 'pry'
require './lib/board.rb'
require './lib/player.rb'


RSpec.describe Player do

  it 'can place first piece' do

    board = Board.new
    player = Player.new(board)
    player.move

    # binding.pry



    expect{board}.to output(
      <<~EXPECTED
      ["A", "B", "C", "D", "E", "F", "G"]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      ["X", ".", ".", ".", ".", ".", "."]
      EXPECTED
    ).to_stdout
  end

end
