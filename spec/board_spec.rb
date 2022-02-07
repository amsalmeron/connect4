require 'pry'
require './lib/board.rb'


RSpec.describe Board do

  it 'create board' do

    board = Board.new

    expect{board.create_board}.to output(
      <<~EXPECTED
      Welcome to Connect Four!
      ABCDEFG
      .......
      .......
      .......
      .......
      .......
      .......
      EXPECTED
    ).to_stdout

  end


end
