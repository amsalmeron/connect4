require 'pry'



class Turn
attr_reader :prompt, :input

  def initialize
    @prompt = 'Select column A-G'
    @input = gets.chomp
  end

end
