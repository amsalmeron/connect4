require "pry"
require "./lib/board"
require "./lib/turn"

RSpec.describe Turn do
  before(:each) do
    @board = Board.new
    @turn = Turn.new(@board)
  end

  it "can create new turn" do
    expect(@turn).to be_an_instance_of(Turn)
  end

  # it 'can create prompt' do
  #   expect(@turn.prompt).to eq("A") .or eq("B")
  #   #expect(@turn.input).to eq()
  # end
  #

  # it 'can place player piece in column A' do
  #
  #   expect(@turn.prompt).to eq("A")
  #
  #
  #   expect{@turn.place_piece}.to output(
  #     <<~EXPECTED
  #     ABCDEFG
  #     .......
  #     .......
  #     .......
  #     .......
  #     .......
  #     X......
  #     EXPECTED
  #   ).to_stdout
  # end
  # it 'check player move valid' do
  #   binding.pry
  #   expect(@turn.check_input).to eq(true)
  #
  # end

  it "can place player piece in all columns" do
    expect(@turn.prompt).to eq("A").or eq("B").or eq("C").or eq("D").or eq("E").or eq("F").or eq("G")

    6.times do
      @turn.place_piece
    end

    expect { @turn.place_piece }.to output(
      <<~EXPECTED
        ABCDEFG
        .......
        .......
        .......
        .......
        .......
        XXXXXXX
      EXPECTED
    ).to_stdout
  end

    expect(@turn.prompt).to eq("A").or eq("B").or eq("C").or eq("D").or eq("E").or eq("F").or eq("G")
    expect { @turn.place_piece }.to output(
      <<~EXPECTED
        ABCDEFG
        .......
        .......
        .......
        .......
        X......
        X......
      EXPECTED
    ).to_stdout
  end

  it "can convert each column to its own string"
  it "can check column strings for 'XXXX' or 'OOOO'"
  it "can convert each row to its own string"
  it "can check row strings for 'XXXX' or 'OOOO'"
  it "can convert upper left to lower right diagonal (diagonal_1) win combos to their own strings"
  it "can check diagonal_1 strings for 'XXXX' or 'OOOO'"
  it "can convert lower left to upper right diagonal (diagonal_2) win combos to their own strings"
  it "can check diagonal_2 strings for 'XXXX' or 'OOOO'"
end
