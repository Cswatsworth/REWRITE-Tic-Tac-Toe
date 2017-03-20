require 'minitest/autorun'
require_relative 'ttt_board_rewrite.rb'

class TicTacToeReWrite < Minitest::Test

	#VALID MARKERS
	
	def test_valid_marker?
		marker = 'X'
		assert_equal(true, valid_marker?(marker))
	end

	def test_valid_marker_if_O?
		marker = 'O'
		assert_equal(true, valid_marker?(marker))
	end

	def test_valid_marker_o
		marker = 'o'
		assert_equal(true, valid_marker?(marker))
	end

	def test_valid_marker_x?
		marker = 'x'
		assert_equal(true, valid_marker?(marker))
	end

	def test_valid_marker_longer_than_one_character
		marker = 'xX'
		assert_equal(false, valid_marker?(marker))
	end

	def test_valid_marker_exclude_symbols
		marker = '&'
		assert_equal(false, valid_marker?(marker))
	end

	def test_valid_marker_is_a_number
		marker = '3'
		assert_equal(false, valid_marker?(marker))
	end

		#VALID BOARD LENGTH

	def test_board_length
		board = [0, 1, 2, 3, 4, 5, 6, 7, 8]
		assert_equal(true, valid_board_length?(board))
	end

	def test_board_length
		board = [0, 1, 2]
		assert_equal(false, valid_board_length?(board))
	end

end
