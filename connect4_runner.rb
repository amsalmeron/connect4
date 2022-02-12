require 'pry'
require './lib/board.rb'
require './lib/turn.rb'




puts "Welcome to Connect Four!"
puts "Type 'start' to begin."
puts "------------------------"

#start = gets.chomp
start = 'start'
  if start == 'start'
    @board = Board.new
    @board.render
  end

@turn = Turn.new(@board)


21.times do
  @turn.prompt
  @turn.place_piece
  @turn.computer
end
#loop until board is full or winner is determined
