require "pry"
require "./lib/board"
require "./lib/turn"
require "./lib/game"

puts "Welcome to CONNECT FOUR"
puts "Enter p to play. Enter q to quit."
puts "---------------------------------"

menu_selection = gets.chomp
if menu_selection == "p"
  board = Board.new
  board.render
  turn = Turn.new(board)
  game = Game.new(turn)
  game.play_game

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
