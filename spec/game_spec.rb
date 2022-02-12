require "pry"
require "./lib/board"
require "./lib/turn"
require "./lib/game"

RSpec.describe Game do
  before(:each) do
    @board = Board.new
    @turn = Turn.new(@board)
    @game = Game.new(@turn)
  end

  it "can create new game" do
    expect(@game).to be_an_instance_of(Game)
  end
end
