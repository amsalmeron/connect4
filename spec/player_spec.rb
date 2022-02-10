require 'pry'
require './lib/board.rb'
require './lib/player.rb'


RSpec.describe Player do

  xit 'can place first piece' do

    board = Board.new.board
    #binding.pry
    player = Player.new(board)
    player.move

    expect{player.move}.to output(
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
