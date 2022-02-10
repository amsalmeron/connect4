require 'pry'
require './lib/board.rb'
require './lib/turn.rb'


RSpec.describe Turn do

  before(:each) do
    @board = Board.new
    @turn = Turn.new(@board)
  end

  it 'can create new turn' do
    expect(@turn).to be_an_instance_of(Turn)
  end

  it 'can create prompt and accept input' do
    expect(@turn.prompt).to eq("A")
    #expect(@turn.input).to eq()
  end

  # it 'check player move valid' do
  #   binding.pry
  #   expect(@turn.check_input).to eq(true)
  #
  # end

  it 'can place player piece in column A' do
    
    expect{@turn.place_piece}.to output(
      <<~EXPECTED
      ABCDEFG
      .......
      .......
      .......
      .......
      .......
      X......
      EXPECTED
    ).to_stdout
  end

end
