require "pry"
require "./lib/board"
require "./lib/turn"

puts "Welcome to Connect Four!"
puts "Type 'start' to begin."
puts "------------------------"

# start = gets.chomp
start = "start"
if start == "start"
  @board = Board.new
  @board.render
end

@turn = Turn.new(@board)

21.times do
  @turn.prompt
  @turn.place_piece
  @turn.computer
  # @turn.check_board
end
#
#
#
#
#
#
#
#
# Iteration 3 Pseudocode
#
# @turn.check_board
# Convert each column to its own string
# =>Check strings for 4 X or O in row (contains "XXXX" or "OOOO")
#
# Convert each row (same index positions) to its own string
# =>Check strings for 4 X or O in row (contains "XXXX" or "OOOO")
#
# Find possible diagonal win combos using index positions (working on that...)
#  =>Convert each combo to its own string
#   =>Check strings for 4 X or O in row (contains "XXXX" or "OOOO")
