require 'pry'
require './lib/board.rb'


RSpec.describe Board do

  it 'create board' do

    expect{Board.new}.to output(
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
