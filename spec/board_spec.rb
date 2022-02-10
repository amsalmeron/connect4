require 'pry'
require './lib/board.rb'


RSpec.describe Board do

  before(:each) do
    @board = Board.new
  end

  it 'create board' do
    expect(@board).to be_an_instance_of(Board)
  end

  it 'has columns' do
    expect(@board.columns).to eq({
      "A" => [".", ".", ".", ".", ".", "."],
      "B" => [".", ".", ".", ".", ".", "."],
      "C" => [".", ".", ".", ".", ".", "."],
      "D" => [".", ".", ".", ".", ".", "."],
      "E" => [".", ".", ".", ".", ".", "."],
      "F" => [".", ".", ".", ".", ".", "."],
      "G" => [".", ".", ".", ".", ".", "."]
      })
  end

  it 'renders' do
    expect{@board.render}.to output(
      <<~EXPECTED
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
