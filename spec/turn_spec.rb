require "pry"
require "./lib/board"
require "./lib/turn"

RSpec.describe Turn do
  before(:each) do
    @board = Board.new
    @turn = Turn.new(@board)
  end

  xit "can create new turn" do
    expect(@turn).to be_an_instance_of(Turn)
  end

  xit "can display blank board" do
    expect { @board.render }.to output(
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

  xit "can create prompt" do
    expect { @turn.prompt }.to output("Select column A-G: \n").to_stdout
  end

  xit "player can place piece in column A" do
    allow($stdin).to receive_message_chain(:gets, :chomp).and_return "A"
    expect { @turn.place_piece }.to output(
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

  xit "computer places piece" do
    @turn.computer
    expect(@board.columns.values.join("")).to include("O")
  end

  xit "can detect invalid column selection then place piece on column A" do
    # must choose invalid column first than column A
    expect { @turn.place_piece }.to output(
      <<~EXPECTED
        Invalid input. Try again.
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
  # still working
  it "can detect column A is full" do
    6.times do
      @turn.prompt
      @turn.place_piece
    end
    expect (@turn.place_piece.output).to include("Column A is full.")
  end

  xit "computer detects full column and adjusts" do
    21.times do
      @turn.prompt
      @turn.place_piece
      @turn.computer
    end
    expect(@board.columns.value?(".")).to be false
  end

  xit "check full board for tie" do
    21.times do
      @turn.prompt
      @turn.place_piece
      @turn.computer
    end
    expect { @turn.check_tie }.to output("-----DRAW-----\n").to_stdout
  end
  #---------------------------------------------------
  # Tests for Iteration 3
  # it "can convert each column to its own string"
  # it "can check column strings for 'XXXX' or 'OOOO'"
  # it "can convert each row to its own string"
  # it "can check row strings for 'XXXX' or 'OOOO'"
  #---------------------------------------------------
  it "can convert upper left to lower right diagonal (diagonal_1) win combos to their own strings" do
    expect
  end
  # it "can check diagonal_1 strings for 'XXXX' or 'OOOO'"
  # it "can convert lower left to upper right diagonal (diagonal_2) win combos to their own strings"
  # it "can check diagonal_2 strings for 'XXXX' or 'OOOO'"
end
