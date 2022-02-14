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

  it "can display blank board" do
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

  it "can create prompt" do
    expect { @turn.prompt }.to output("Select column A-G: \n").to_stdout
  end

  it "player can place piece in column A" do
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

  it "computer places piece" do
    @turn.computer
    expect(@board.columns.values.join("")).to include("O")
  end

  it "can check vertical win" do
    4.times do
      allow($stdin).to receive_message_chain(:gets, :chomp).and_return "A"
      @turn.place_piece
    end
    @turn.check_vert_win
    expect(@turn.endgame).to eq(true)
  end

  it "can check horizontal win" do
    allow($stdin).to receive_message_chain(:gets, :chomp).and_return "A"
    @turn.place_piece
    allow($stdin).to receive_message_chain(:gets, :chomp).and_return "B"
    @turn.place_piece
    allow($stdin).to receive_message_chain(:gets, :chomp).and_return "C"
    @turn.place_piece
    allow($stdin).to receive_message_chain(:gets, :chomp).and_return "D"
    @turn.place_piece

    @turn.check_horz_win
    expect(@turn.endgame).to eq(true)
  end

  xit "check full board for tie" do
    21.times do
      @turn.prompt
      @turn.place_piece
      @turn.computer
    end
    expect { @turn.check_tie }.to output("-----DRAW-----\n").to_stdout
  end
end
