require "pry"
require "matrix"

class Turn
  attr_accessor :winner
  def initialize(board)
    @board = board
    @column_names = @board.columns.keys
    @input = ""
  end

  def prompt
    puts "Select column A-G: "
  end

  def place_piece
    loop do
      @input = $stdin.gets.chomp.upcase

      if @input == "A"
        if @board.columns["A"][-1] == "."
          @board.columns["A"][-1] = "X"
          @board.render
          break
        elsif @board.columns["A"][-2] == "."
          @board.columns["A"][-2] = "X"
          @board.render
          break
        elsif @board.columns["A"][-3] == "."
          @board.columns["A"][-3] = "X"
          @board.render
          break
        elsif @board.columns["A"][-4] == "."
          @board.columns["A"][-4] = "X"
          @board.render
          break
        elsif @board.columns["A"][-5] == "."
          @board.columns["A"][-5] = "X"
          @board.render
          break
        elsif @board.columns["A"][-6] == "."
          @board.columns["A"][-6] = "X"
          @board.render
          break
        else
          puts "Column A is full."
        end

      elsif @input == "B"
        if @board.columns["B"][-1] == "."
          @board.columns["B"][-1] = "X"
          @board.render
          break
        elsif @board.columns["B"][-2] == "."
          @board.columns["B"][-2] = "X"
          @board.render
          break
        elsif @board.columns["B"][-3] == "."
          @board.columns["B"][-3] = "X"
          @board.render
          break
        elsif @board.columns["B"][-4] == "."
          @board.columns["B"][-4] = "X"
          @board.render
          break
        elsif @board.columns["B"][-5] == "."
          @board.columns["B"][-5] = "X"
          @board.render
          break
        elsif @board.columns["B"][-6] == "."
          @board.columns["B"][-6] = "X"
          @board.render
          break
        else
          puts "Column B is full."
        end

      elsif @input == "C"
        if @board.columns["C"][-1] == "."
          @board.columns["C"][-1] = "X"
          @board.render
          break
        elsif @board.columns["C"][-2] == "."
          @board.columns["C"][-2] = "X"
          @board.render
          break
        elsif @board.columns["C"][-3] == "."
          @board.columns["C"][-3] = "X"
          @board.render
          break
        elsif @board.columns["C"][-4] == "."
          @board.columns["C"][-4] = "X"
          @board.render
          break
        elsif @board.columns["C"][-5] == "."
          @board.columns["C"][-5] = "X"
          @board.render
          break
        elsif @board.columns["C"][-6] == "."
          @board.columns["C"][-6] = "X"
          @board.render
          break
        else
          puts "Column C is full."
        end

      elsif @input == "D"
        if @board.columns["D"][-1] == "."
          @board.columns["D"][-1] = "X"
          @board.render
          break
        elsif @board.columns["D"][-2] == "."
          @board.columns["D"][-2] = "X"
          @board.render
          break
        elsif @board.columns["D"][-3] == "."
          @board.columns["D"][-3] = "X"
          @board.render
          break
        elsif @board.columns["D"][-4] == "."
          @board.columns["D"][-4] = "X"
          @board.render
          break
        elsif @board.columns["D"][-5] == "."
          @board.columns["D"][-5] = "X"
          @board.render
          break
        elsif @board.columns["D"][-6] == "."
          @board.columns["D"][-6] = "X"
          @board.render
          break
        else
          puts "Column D is full."
        end

      elsif @input == "E"
        if @board.columns["E"][-1] == "."
          @board.columns["E"][-1] = "X"
          @board.render
          break
        elsif @board.columns["E"][-2] == "."
          @board.columns["E"][-2] = "X"
          @board.render
          break
        elsif @board.columns["E"][-3] == "."
          @board.columns["E"][-3] = "X"
          @board.render
          break
        elsif @board.columns["E"][-4] == "."
          @board.columns["E"][-4] = "X"
          @board.render
          break
        elsif @board.columns["E"][-5] == "."
          @board.columns["E"][-5] = "X"
          @board.render
          break
        elsif @board.columns["E"][-6] == "."
          @board.columns["E"][-6] = "X"
          @board.render
          break
        else
          puts "Column E is full."
        end

      elsif @input == "F"
        if @board.columns["F"][-1] == "."
          @board.columns["F"][-1] = "X"
          @board.render
          break
        elsif @board.columns["F"][-2] == "."
          @board.columns["F"][-2] = "X"
          @board.render
          break
        elsif @board.columns["F"][-3] == "."
          @board.columns["F"][-3] = "X"
          @board.render
          break
        elsif @board.columns["F"][-4] == "."
          @board.columns["F"][-4] = "X"
          @board.render
          break
        elsif @board.columns["F"][-5] == "."
          @board.columns["F"][-5] = "X"
          @board.render
          break
        elsif @board.columns["F"][-6] == "."
          @board.columns["F"][-6] = "X"
          @board.render
          break
        else
          puts "Column F is full."
        end

      elsif @input == "G"
        if @board.columns["G"][-1] == "."
          @board.columns["G"][-1] = "X"
          @board.render
          break
        elsif @board.columns["G"][-2] == "."
          @board.columns["G"][-2] = "X"
          @board.render
          break
        elsif @board.columns["G"][-3] == "."
          @board.columns["G"][-3] = "X"
          @board.render
          break
        elsif @board.columns["G"][-4] == "."
          @board.columns["G"][-4] = "X"
          @board.render
          break
        elsif @board.columns["G"][-5] == "."
          @board.columns["G"][-5] = "X"
          @board.render
          break
        elsif @board.columns["G"][-6] == "."
          @board.columns["G"][-6] = "X"
          @board.render
          break
        else
          puts "Column G is full."
        end

      else
        puts "Invalid input. Try again."
      end
    end
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
        @winner = true
        p "CONGRATS, YOU HAVE WON"
      elsif checkpoint.include? "OOOO"
        @winner = true
        p "YOU'VE BEEN BEATEN"
      end
    end
  end

  def check_horz_win
    @board.rows.each do |row|
      checkpoint = row.join("")
      if checkpoint.include? "XXXX"
        @winner = true
        p "CONGRATS, YOU HAVE WON"
      elsif checkpoint.include? "OOOO"
        @winner = true
        p "YOU'VE BEEN BEATEN"
      end
    end
  end

  def check_diag_win
    lr_diagonals = [
      lr_diagonal_1 = [
      @board.columns["A"][2],
      @board.columns["B"][3],
      @board.columns["C"][4],
      @board.columns["D"][5]
    ]
      lr_diagonal_2 = [
      @board.columns["A"][1],
      @board.columns["B"][2],
      @board.columns["C"][3],
      @board.columns["D"][4],
      @board.columns["E"][5]
    ]
      lr_diagonal_3 = [
      @board.columns["A"][0],
      @board.columns["B"][1],
      @board.columns["C"][2],
      @board.columns["D"][3],
      @board.columns["E"][4],
      @board.columns["F"][5]

    ]
      lr_diagonal_4 = [
      @board.columns["B"][0],
      @board.columns["C"][1],
      @board.columns["D"][2],
      @board.columns["E"][3],
      @board.columns["F"][4],
      @board.columns["G"][5]
    ]
      lr_diagonal_5 = [
      @board.columns["C"][0],
      @board.columns["D"][1],
      @board.columns["E"][2],
      @board.columns["F"][3],
      @board.columns["G"][4]

    ]
      lr_diagonal_6 = [
      @board.columns["D"][0],
      @board.columns["E"][1],
      @board.columns["F"][2],
      @board.columns["G"][3]
    ]
      ]

    lr_diagonals.each do |diagonal_num|
      if diagonal_num.join.include? "XXXX"
        @winner = true
        p "CONGRATS, YOU HAVE WON"
      elsif diagonal_num.join.include? "OOOO"
        @winner = true
        p "YOU'VE BEEN BEATEN"
      end
    end

    rl_diagonals = [
      rl_diagonal_1 = [
      @board.columns["A"][3],
      @board.columns["B"][2],
      @board.columns["C"][1],
      @board.columns["D"][0]
    ]
      rl_diagonal_2 = [
      @board.columns["A"][4],
      @board.columns["B"][3],
      @board.columns["C"][2],
      @board.columns["D"][1],
      @board.columns["E"][0]
    ]
      rl_diagonal_3 = [
      @board.columns["A"][5],
      @board.columns["B"][4],
      @board.columns["C"][3],
      @board.columns["D"][2],
      @board.columns["E"][1],
      @board.columns["F"][0]

    ]
      rl_diagonal_4 = [
      @board.columns["B"][5],
      @board.columns["C"][4],
      @board.columns["D"][3],
      @board.columns["E"][2],
      @board.columns["F"][1],
      @board.columns["G"][0]
    ]
      rl_diagonal_5 = [
      @board.columns["C"][5],
      @board.columns["D"][4],
      @board.columns["E"][3],
      @board.columns["F"][2],
      @board.columns["G"][1]

    ]
      rl_diagonal_6 = [
      @board.columns["D"][5],
      @board.columns["E"][4],
      @board.columns["F"][3],
      @board.columns["G"][2]
    ]
      ]

    rl_diagonals.each do |diagonal_num|
      if diagonal_num.join.include? "XXXX"
        @winner = true
        p "CONGRATS, YOU HAVE WON"
      elsif diagonal_num.join.include? "OOOO"
        @winner = true
        p "YOU'VE BEEN BEATEN"
      end
    end
  end

  def check_tie
    if !@board.columns.values.flatten.to_s.include? "."
      @winner = true
      puts "-----DRAW-----"
    end
  end
end
