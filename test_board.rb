require 'minitest/autorun'
require_relative 'board.rb'

class TestBoard <Minitest::Test

	def test_new_board
		board_object  = BoardClass.new
		assert_equal(Array.new(9, ' '),board_object.ttt_board_attribute)
	end

	def test_valid_board_position_0 #first index of array
		board_object = BoardClass.new
		assert_equal(true, board_object.valid_position?(0))
	end

	def test_valid_board_position_7
		board_object = BoardClass.new
		assert_equal(true, board_object.valid_position?(7))
	end

	def test_valid_board_position_9
		board_object = BoardClass.new
		assert_equal(false, board_object.valid_position?(9))
	end

	def test_valid_board_position_5_thats_full
		board_object = BoardClass.new
		board_object.ttt_board_attribute = [' ', ' ', ' ', ' ', ' ', 'O', ' ', ' ', ' ']
		assert_equal(false, board_object.valid_position?(5))
	end


	def test_valid_board_position_7_filled
		board_object = BoardClass.new
		board_object.ttt_board_attribute = ['X', ' ', 'O', ' ', ' ', 'O', ' ', 'X', ' ']
		assert_equal(false, board_object.valid_position?(7))
	end

	def test_update_zero_pos_with_0
		board_object = BoardClass.new
		marker_variable = 'O'
		position_variable = 0
		board_object.update_position(marker_variable, position_variable)
		assert_equal(['O', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '], board_object.ttt_board_attribute)
	end

	def test_update_4_position_with_x
		board_object = BoardClass.new
		board_object.ttt_board_attribute = ['X', ' ', 'O', ' ', 'X', ' ', ' ', 'O', ' ']
		board_object.update_position('X', 4)
		board_object.update_position('O', 8)
		assert_equal(['X', ' ', 'O', ' ', 'X', ' ', ' ', 'O', 'O'], board_object.ttt_board_attribute)
	end

	def test_for_full_board
		board_object = BoardClass.new
		board_object.ttt_board_attribute = ['X', ' ', 'O', ' ', 'X', ' ', ' ', 'O', 'O']
		assert_equal(false, board_object.full_board?)

	end

	def test_for_full_board_true
		board_object = BoardClass.new
		board_object.ttt_board_attribute = ['X', 'X', 'O', 'O', 'X', 'O', 'X', 'O', 'O']
		assert_equal(true, board_object.full_board?)
	end

	def test_for_win
		board_object = BoardClass.new
		marker_parameter = 'X'
		board_object.ttt_board_attribute = ['X', 'X', 'X', ' ', ' ', ' ', ' ', ' ', ' ']
		assert_equal(true, board_object.check_for_win?(marker_parameter))
	end

	def test_for_win_o
		board_object = BoardClass.new
		marker_parameter = 'O'
		board_object.ttt_board_attribute = ['O', 'O', 'O', ' ', ' ', ' ', ' ', ' ', ' ']
		assert_equal(true, board_object.check_for_win?(marker_parameter))
	end

	def test_for_win_at_678
		board_object = BoardClass.new
		marker_parameter = 'O'
		board_object.ttt_board_attribute = [' ', ' ', ' ', ' ', ' ', ' ', 'O', 'O', 'O']
		assert_equal(true, board_object.check_for_win?(marker_parameter))
	end
	
	def test_for_win_at_345
		board_object = BoardClass.new
		marker_parameter = 'O'
		board_object.ttt_board_attribute = [' ', ' ', ' ', 'O', 'O', 'O', ' ', ' ', ' ']
		assert_equal(true, board_object.check_for_win?(marker_parameter))
	end

	def test_for_win_036
		board_object = BoardClass.new
		marker_parameter = 'X'
		board_object.ttt_board_attribute = ['X', ' ', ' ', 'X', ' ', ' ', 'X', ' ', ' ']
		assert_equal(true, board_object.check_for_win?(marker_parameter))
	end

	def test_for_false_win
		board_object = BoardClass.new
		marker_parameter = 'O'
		board_object.ttt_board_attribute = ['O', ' ', 'O', ' ', ' ', ' ', ' ', ' ', ' ']
		assert_equal(false, board_object.check_for_win?(marker_parameter))
	end

end