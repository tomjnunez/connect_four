class Board
  attr_reader :board_grid
  def initialize(board_grid)
    @greeting_message = "Welcome to Connect Four the game!"
    @board_grid = [["A", ".", ".", ".", ".", ".", "."],
                ["B", ".", ".", ".", ".", ".", "."],
                ["C", ".", ".", ".", ".", ".", "."],
                ["D", ".", ".", ".", ".", ".", "."],
                ["E", ".", ".", ".", ".", ".", "."],
                ["F", ".", ".", ".", ".", ".", "."],
                ["G", ".", ".", ".", ".", ".", "."]]
  end

  def greeting
    puts @greeting_message

  end

  def print_board
    @board_grid.transpose.each do |line|
      puts line.each { |p| p}.join(" ")
    end
  end
end
