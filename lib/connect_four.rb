require './lib/board'
require './lib/player'
 board = Board.new
board.greeting

board.print_board

player = Player.new(board.board_grid)

player.player_input_for_move

player.index_for_player_move(player.player_move)

board.print_board
