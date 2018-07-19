require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/board'

class PlayerTest < Minitest::Test
  def test_it_exists
    board = Board.new(board)
    player = Player.new(board)

    assert_instance_of Player, player
  end

  def test_it_has_input
    skip
    board = Board.new(board)
    player = Player.new(board)

    assert_equal "A", player.index_for_player_move
  end

  def test_player_move_index
    skip
   board = Board.new(board)
   player = Player.new(board)

   expected = ["A", ".", ".", ".", ".", ".", "."]
   actual = player.player_move_index("A")
   assert_equal expected, actual
  end
end
