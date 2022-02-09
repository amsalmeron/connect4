require 'pry'
require './lib/board.rb'


RSpec.describe Board do

  it 'create board' do

    expect{Board.new}.to output(


      <<~EXPECTED
      ["A", "B", "C", "D", "E", "F", "G"]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      [".", ".", ".", ".", ".", ".", "."]
      EXPECTED
    ).to_stdout

  end


end
