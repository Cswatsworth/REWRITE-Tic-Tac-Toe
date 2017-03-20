class Player

	attr_accessor :player1, :player2
	
	def initialize(marker)
		@player1 = marker
		@player2 = getplayer2
	end

	def getplayer2
		if player1 == 'X' || player1 == 'x'
			
			@player2 = 'O'
		else
			@player2 = 'X'
		end
		
	end

end