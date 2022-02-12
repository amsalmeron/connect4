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

  xit "can display blank board" do
    expect { @turn.board.render }.to output(
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

  it "can create prompt" do
    expect { @turn.prompt }.to output("Select column A-G: \n").to_stdout
  end

  it "player can place piece in column A" do
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
  # still working on this...
  it "computer places piece" do
    @turn.computer
    expect(@board.columns.keys).to include(@turn.computer)
  end
  # still working
  xit "player and computer can fill board" do
    20.times do
      @turn.prompt
      @turn.place_piece
      @turn.computer
    end
  end
  # still working
  xit "can detect invalid column selection" do
    expect { @turn.place_piece }.to output("Invalid input. Try again.\n").to_stdout
  end
  # still working
  xit "can detect full column" do
    6.times do
      @turn.place_piece
    end
    expect { @turn.place_piece }.to output("Column #{@input} is full.\n").to_stdout
  end

  xit "computer detects full column and adjusts" do
    21.times do
      @turn.prompt
      @turn.place_piece
      @turn.computer
    end
    expect(@board.columns.values.include?(".")).to be false
  end

  # Tests for Iteration 3
  # it "can convert each column to its own string"
  # it "can check column strings for 'XXXX' or 'OOOO'"
  # it "can convert each row to its own string"
  # it "can check row strings for 'XXXX' or 'OOOO'"
  # it "can convert upper left to lower right diagonal (diagonal_1) win combos to their own strings"
  # it "can check diagonal_1 strings for 'XXXX' or 'OOOO'"
  # it "can convert lower left to upper right diagonal (diagonal_2) win combos to their own strings"
  # it "can check diagonal_2 strings for 'XXXX' or 'OOOO'"
end
