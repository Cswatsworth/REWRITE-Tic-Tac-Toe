require 'minitest/autorun'
require_relative 'game.rb'

class TestGameClass < Minitest::Test

	def test_change_player
		game_object = GameClass.new('X')
		assert_equal('O', game_object.change_player)
		
	end

	def test_get_move
		
	end


end