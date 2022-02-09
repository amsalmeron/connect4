require 'pry'


class Player


  def initialize
    puts "select column A-G:"
    player_column = gets.chomp

    if player_column == "a"
      #change :row6 => [0] to X
      board[:row6] = 'X'
    end
    puts board
  end





end
