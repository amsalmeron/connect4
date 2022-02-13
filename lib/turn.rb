require "pry"

class Turn
  def initialize(board)
    @board = board
    @column_names = @board.columns.keys
  end

  def prompt
    puts "Select column A-G: "
  end

  def place_piece
    @input = $stdin.gets.chomp.upcase

    r_column = @board.columns[@input]
    r_column.each.with_index do |value, inx|
      if value == "."
        index = inx
      end
      @board.columns[@input][index] = "X"
      @board.render
    end

    # if @input == "A"
    #   if @board.columns["A"][-1] == "."
    #     @board.columns["A"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["A"][-2] == "."
    #     @board.columns["A"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["A"][-3] == "."
    #     @board.columns["A"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["A"][-4] == "."
    #     @board.columns["A"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["A"][-5] == "."
    #     @board.columns["A"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["A"][-6] == "."
    #     @board.columns["A"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column A is full."
    #   end
    #
    # elsif @input == "B"
    #   if @board.columns["B"][-1] == "."
    #     @board.columns["B"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["B"][-2] == "."
    #     @board.columns["B"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["B"][-3] == "."
    #     @board.columns["B"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["B"][-4] == "."
    #     @board.columns["B"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["B"][-5] == "."
    #     @board.columns["B"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["B"][-6] == "."
    #     @board.columns["B"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column B is full."
    #   end
    #
    # elsif @input == "C"
    #   if @board.columns["C"][-1] == "."
    #     @board.columns["C"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["C"][-2] == "."
    #     @board.columns["C"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["C"][-3] == "."
    #     @board.columns["C"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["C"][-4] == "."
    #     @board.columns["C"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["C"][-5] == "."
    #     @board.columns["C"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["C"][-6] == "."
    #     @board.columns["C"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column C is full."
    #   end
    #
    # elsif @input == "D"
    #   if @board.columns["D"][-1] == "."
    #     @board.columns["D"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["D"][-2] == "."
    #     @board.columns["D"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["D"][-3] == "."
    #     @board.columns["D"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["D"][-4] == "."
    #     @board.columns["D"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["D"][-5] == "."
    #     @board.columns["D"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["D"][-6] == "."
    #     @board.columns["D"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column D is full."
    #   end
    #
    # elsif @input == "E"
    #   if @board.columns["E"][-1] == "."
    #     @board.columns["E"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["E"][-2] == "."
    #     @board.columns["E"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["E"][-3] == "."
    #     @board.columns["E"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["E"][-4] == "."
    #     @board.columns["E"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["E"][-5] == "."
    #     @board.columns["E"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["E"][-6] == "."
    #     @board.columns["E"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column E is full."
    #   end
    #
    # elsif @input == "F"
    #   if @board.columns["F"][-1] == "."
    #     @board.columns["F"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["F"][-2] == "."
    #     @board.columns["F"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["F"][-3] == "."
    #     @board.columns["F"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["F"][-4] == "."
    #     @board.columns["F"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["F"][-5] == "."
    #     @board.columns["F"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["F"][-6] == "."
    #     @board.columns["F"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column F is full."
    #   end
    #
    # elsif @input == "G"
    #   if @board.columns["G"][-1] == "."
    #     @board.columns["G"][-1] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["G"][-2] == "."
    #     @board.columns["G"][-2] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["G"][-3] == "."
    #     @board.columns["G"][-3] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["G"][-4] == "."
    #     @board.columns["G"][-4] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["G"][-5] == "."
    #     @board.columns["G"][-5] = "X"
    #     @board.render
    #     break
    #   elsif @board.columns["G"][-6] == "."
    #     @board.columns["G"][-6] = "X"
    #     @board.render
    #     break
    #   else
    #     puts "Column G is full."
    #   end
    #
    # else
    #   puts "Invalid input. Try again."
    # end
  end

  def computer
    loop do
      comp_column = @board.columns.to_a.sample(1).to_a
      comp_move = comp_column[0][1]

      if comp_move[-1] == "."
        comp_move[-1] = "O"
        break @board.render

      elsif comp_move[-2] == "."
        comp_move[-2] = "O"
        break @board.render

      elsif comp_move[-3] == "."
        comp_move[-3] = "O"
        break @board.render

      elsif comp_move[-4] == "."
        comp_move[-4] = "O"
        break @board.render

      elsif comp_move[-5] == "."
        comp_move[-5] = "O"
        break @board.render

      elsif comp_move[-6] == "."
        comp_move[-6] = "O"
        break @board.render

      end
    end
  end

  def check_vert_win
    @board.columns.values.each do |column|
      checkpoint = column.join("")
      if checkpoint.include? "XXXX"
        p "CONGRATS, YOU HAVE WON"
      elsif checkpoint.include? "OOOO"
        p "YOU'VE BEEN BEATEN"
      end
    end

    # check_horiz_win
    # check diag wins

    def check_tie
      if @columns.values.flatten.include? "." == false
        p "---DRAW---"
      end
    end

    checkpoint_A = @board.columns["A"].join("")
    if checkpoint_A.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    checkpoint_B = @board.columns["B"].join("")
    if checkpoint_B.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    checkpoint_C = @board.columns["C"].join("")
    if checkpoint_C.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    checkpoint_D = @board.columns["D"].join("")
    if checkpoint_D.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    checkpoint_E = @board.columns["E"].join("")
    if checkpoint_E.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    checkpoint_F = @board.columns["F"].join("")
    if checkpoint_F.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    checkpoint_G = @board.columns["G"].join("")
    if checkpoint_G.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    row_1 = @board.rows[5].join("")
    if row_1.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    row_2 = @board.rows[4].join("")
    if row_2.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    row_3 = @board.rows[3].join("")
    if row_3.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    row_4 = @board.rows[2].join("")
    if row_4.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    row_5 = @board.rows[1].join("")
    if row_5.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    row_6 = @board.rows[0].join("")
    if row_6.include? "XXXX"
      p "CONGRATS, YOU HAVE WON!"
    end

    # full_board = @board.rows[0] + @board.rows[1] + @board.rows[2] + @board.rows[3] + @board.rows[4] + @board.rows[5]
    # binding.pry

    # if @board.columns["A"][-1..-4] == "X"
    #   p "LFG"
    # elsif @board.columns["A"][-2..-5] == "X"
    #   p "LFG"
    # elsif @board.columns["A"][-3..-6] == "X"
    #   p "LFG"
    #
    # end

    # if @board.columns["A"][0] = "X" && @board.columns["A"][1] = "X" && @board.columns["A"][2] = "X" && @board.columns["A"][3] = "X"
    #   puts "Congrats, not"
    # # elsif @board.columns["A"][1] && @board.columns["A"][2] && @board.columns["A"][3] && @board.columns["A"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["A"][2] && @board.columns["A"][3] && @board.columns["A"][4] && @board.columns["A"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["B"][0] && @board.columns["B"][1] && @board.columns["B"][2] && @board.columns["B"][3] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["B"][1] && @board.columns["B"][2] && @board.columns["B"][3] && @board.columns["B"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["B"][2] && @board.columns["B"][3] && @board.columns["B"][4] && @board.columns["B"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["C"][0] && @board.columns["C"][1] && @board.columns["C"][2] && @board.columns["C"][3] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["C"][1] && @board.columns["C"][2] && @board.columns["C"][3] && @board.columns["C"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["C"][2] && @board.columns["C"][3] && @board.columns["C"][4] && @board.columns["C"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["D"][0] && @board.columns["D"][1] && @board.columns["D"][2] && @board.columns["D"][3] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["D"][1] && @board.columns["D"][2] && @board.columns["D"][3] && @board.columns["D"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["D"][2] && @board.columns["D"][3] && @board.columns["D"][4] && @board.columns["D"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["E"][0] && @board.columns["E"][1] && @board.columns["E"][2] && @board.columns["E"][3] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["E"][1] && @board.columns["E"][2] && @board.columns["E"][3] && @board.columns["E"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["E"][2] && @board.columns["E"][3] && @board.columns["E"][4] && @board.columns["E"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["F"][0] && @board.columns["F"][1] && @board.columns["F"][2] && @board.columns["F"][3] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["F"][1] && @board.columns["F"][2] && @board.columns["F"][3] && @board.columns["F"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["F"][2] && @board.columns["F"][3] && @board.columns["F"][4] && @board.columns["F"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["G"][0] && @board.columns["G"][1] && @board.columns["G"][2] && @board.columns["G"][3] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["G"][1] && @board.columns["G"][2] && @board.columns["G"][3] && @board.columns["G"][4] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # # elsif @board.columns["G"][2] && @board.columns["G"][3] && @board.columns["G"][4] && @board.columns["G"][5] = "X" || "O"
    # #   puts "Congrats, we have a winner."
    # else
    # nil
    # end
  end
end
