require "pry"
require "./lib/board"
require "./lib/turn"
require "./lib/game"

board = Board.new
turn = Turn.new(board)
game = Game.new(turn, board)

game.play_game
