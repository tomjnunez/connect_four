require './lib/board'

class Player
  attr_accessor :board, :player_move

  def initialize(board_grid)
    @board_grid = board_grid
    @player_move = player_move
  end

  def player_input_for_move
    puts "Type a letter A - G to place a chip accordingly"
    @player_move = gets.chomp
  end

  def index_for_player_move(player_move)
    row = @board_grid.find do |element|
      element[0] == player_move
    end
    row
  end

  def update_row(row)
    row.reverse.find do |index|
      if index == "."
      index.replace("X")
      end
    end
    row
  end

  def update_board(row)
    @board.map! do |element|
      if element[0] == row[0]
        element = row
      else
        element
      end
    end
  end
end
