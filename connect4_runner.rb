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



@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer
@turn.prompt
@turn.place_piece
@turn.computer

#loop until board is full or winner is determined
