require 'minitest/autorun'
require_relative 'player.rb'

class TestPlayer <Minitest::Test

	def test_player1_marker
		player = Player.new('X')
		assert_equal('X',player.player1)
		
	end
	
	def test_player2_marker
		player = Player.new('O')
		assert_equal('X',player.player2)
	end

	def test_player2_marker_is_still_x
		player = Player.new('T')
		assert_equal('X',player.player2)
	end
end