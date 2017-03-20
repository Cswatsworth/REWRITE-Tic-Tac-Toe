require_relative 'player.rb'

class GameClass

	attr_accessor :active_player_attribute, :player1_variable, :player2_variable
	
	def initialize(marker_parameter)
		player_object = Player.new(marker_parameter)
		@player1_variable = player_object.player1
		@player2_variable = player_object.player2 
		@current_player_attribute = player1_variable
	end

	def change_player()
		if active_player_attribute == player1_variable
			active_player_attribute = player2_variable
		else
			current_player_attribute = player1_variable
		end
	end
end