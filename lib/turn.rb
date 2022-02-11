require 'pry'



class Turn

  attr_reader :prompt, :input

  def initialize(board)
    @board = board
    @input = ""

  end

  def prompt
    puts "Select column A-G: "
  end

  def check_input
    if @input = "A" || "B" || "C" || "D" || "E" || "F" || "G"
      true
    else
      puts "Invalid selection. Try again."
      @input = $stdin.gets.chomp
    end
  end

  def place_piece

    @input = $stdin.gets.chomp

    # if @input != "A" || @input != "B" || @input != "C" || @input != "D" || @input != "E" || @input != "F" || @input != "G"
    #
    #   puts "Invalid input. Try again."
    #
    # else

      if @input == "A"

        if @board.columns["A"][-1] == "."
          @board.columns["A"][-1] = "X"
          @board.render

        elsif @board.columns["A"][-2] == "."
          @board.columns["A"][-2] = "X"
          @board.render

        elsif @board.columns["A"][-3] == "."
          @board.columns["A"][-3] = "X"
          @board.render

        elsif @board.columns["A"][-4] == "."
          @board.columns["A"][-4] = "X"
          @board.render

        elsif @board.columns["A"][-5] == "."
          @board.columns["A"][-5] = "X"
          @board.render

        elsif @board.columns["A"][-6] == "."
          @board.columns["A"][-6] = "X"
          @board.render

        else
          puts "Column A is full."
        end

      elsif @input == "B"

        if @board.columns["B"][-1] == "."
          @board.columns["B"][-1] = "X"
          @board.render

        elsif @board.columns["B"][-2] == "."
          @board.columns["B"][-2] = "X"
          @board.render

        elsif @board.columns["B"][-3] == "."
          @board.columns["B"][-3] = "X"
          @board.render

        elsif @board.columns["B"][-4] == "."
          @board.columns["B"][-4] = "X"
          @board.render

        elsif @board.columns["B"][-5] == "."
          @board.columns["B"][-5] = "X"
          @board.render

        elsif @board.columns["B"][-6] == "."
          @board.columns["B"][-6] = "X"
          @board.render

        else
          puts "Column B is full."
        end

      elsif @input == "C"

        if @board.columns["C"][-1] == "."
          @board.columns["C"][-1] = "X"
          @board.render

        elsif @board.columns["C"][-2] == "."
          @board.columns["C"][-2] = "X"
          @board.render

        elsif @board.columns["C"][-3] == "."
          @board.columns["C"][-3] = "X"
          @board.render

        elsif @board.columns["C"][-4] == "."
          @board.columns["C"][-4] = "X"
          @board.render

        elsif @board.columns["C"][-5] == "."
          @board.columns["C"][-5] = "X"
          @board.render

        elsif @board.columns["C"][-6] == "."
          @board.columns["C"][-6] = "X"
          @board.render

        else
          puts "Column C is full."
        end

      elsif @input == "D"

        if @board.columns["D"][-1] == "."
          @board.columns["D"][-1] = "X"
          @board.render

        elsif @board.columns["D"][-2] == "."
          @board.columns["D"][-2] = "X"
          @board.render

        elsif @board.columns["D"][-3] == "."
          @board.columns["D"][-3] = "X"
          @board.render

        elsif @board.columns["D"][-4] == "."
          @board.columns["D"][-4] = "X"
          @board.render

        elsif @board.columns["D"][-5] == "."
          @board.columns["D"][-5] = "X"
          @board.render

        elsif @board.columns["D"][-6] == "."
          @board.columns["D"][-6] = "X"
          @board.render

        else
          puts "Column D is full."
        end

      elsif @input == "E"

          if @board.columns["E"][-1] == "."
            @board.columns["E"][-1] = "X"
            @board.render

          elsif @board.columns["E"][-2] == "."
            @board.columns["E"][-2] = "X"
            @board.render

          elsif @board.columns["E"][-3] == "."
            @board.columns["E"][-3] = "X"
            @board.render

          elsif @board.columns["E"][-4] == "."
            @board.columns["E"][-4] = "X"
            @board.render

          elsif @board.columns["E"][-5] == "."
            @board.columns["E"][-5] = "X"
            @board.render

          elsif @board.columns["E"][-6] == "."
            @board.columns["E"][-6] = "X"
            @board.render

          else
            puts "Column E is full."
          end

      elsif @input == "F"

        if @board.columns["F"][-1] == "."
          @board.columns["F"][-1] = "X"
          @board.render

        elsif @board.columns["F"][-2] == "."
          @board.columns["F"][-2] = "X"
          @board.render

        elsif @board.columns["F"][-3] == "."
          @board.columns["F"][-3] = "X"
          @board.render

        elsif @board.columns["F"][-4] == "."
          @board.columns["F"][-4] = "X"
          @board.render

        elsif @board.columns["F"][-5] == "."
          @board.columns["F"][-5] = "X"
          @board.render

        elsif @board.columns["F"][-6] == "."
          @board.columns["F"][-6] = "X"
          @board.render

        else
          puts "Column F is full."
        end

      elsif @input == "G"

        if @board.columns["G"][-1] == "."
            @board.columns["G"][-1] = "X"
            @board.render

        elsif @board.columns["G"][-2] == "."
            @board.columns["G"][-2] = "X"
            @board.render

        elsif @board.columns["G"][-3] == "."
            @board.columns["G"][-3] = "X"
            @board.render

        elsif @board.columns["G"][-4] == "."
            @board.columns["G"][-4] = "X"
            @board.render

        elsif @board.columns["G"][-5] == "."
            @board.columns["G"][-5] = "X"
            @board.render

        elsif @board.columns["G"][-6] == "."
            @board.columns["G"][-6] = "X"
            @board.render

        else
            puts "Column G is full."

        end
      # end
    end

  end

end
