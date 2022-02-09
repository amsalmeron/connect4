require 'pry'
require './lib/board.rb'



puts "Welcome to Connect Four!"
puts "Type 'start' to begin."
puts "------------------------"

#start = gets.chomp
start = 'start'

  if start == 'start'
    board = Board.new
    puts "Select column A-G"
  end
