class BoardClass
	attr_accessor :ttt_board_attribute

	def initialize
		@ttt_board_attribute = Array.new(9, ' ')
	end

	def valid_position?(position_parameter)
		
		if ttt_board_attribute[position_parameter] == ' '
			true
		else
			false
		end
	end

	def update_position(marker_parameter, position_parameter)
		ttt_board_attribute[position_parameter] = marker_parameter
	end

	def full_board?
		if ttt_board_attribute.include?(' ')
			false
		else
			true
		end
	end


	def check_for_win?(marker_parameter)


		ttt_board_attribute[0] == marker_parameter && ttt_board_attribute[1] == marker_parameter && ttt_board_attribute[2] == marker_parameter ||
		
		ttt_board_attribute[3] == marker_parameter && ttt_board_attribute[4] == marker_parameter && ttt_board_attribute[5] == marker_parameter ||
			 		
		ttt_board_attribute[6] == marker_parameter && ttt_board_attribute[7]  == marker_parameter  && ttt_board_attribute[8] == marker_parameter ||
		 
		ttt_board_attribute[0] == marker_parameter && ttt_board_attribute[3]  == marker_parameter  && ttt_board_attribute[6] == marker_parameter ||
		 
		ttt_board_attribute[1] == marker_parameter && ttt_board_attribute[4]  == marker_parameter && ttt_board_attribute[7] == marker_parameter ||

		ttt_board_attribute[2] == marker_parameter && ttt_board_attribute[5]  == marker_parameter  && ttt_board_attribute[8] == marker_parameter ||

		ttt_board_attribute[0] == marker_parameter && ttt_board_attribute[4]  == marker_parameter  && ttt_board_attribute[8] == marker_parameter ||

		ttt_board_attribute[2] == marker_parameter && ttt_board_attribute[4]  == marker_parameter  && ttt_board_attribute[6] == marker_parameter
		
	end



end