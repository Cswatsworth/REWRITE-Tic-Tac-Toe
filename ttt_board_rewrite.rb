def valid_marker?(marker)

	if marker.class == String && (marker.match(/[XxOo]/) && marker.length == 1)
		true
	else
		false
	end
end

def valid_board_length?(board)
	if board.length == 9
		true
	else
		false
	end
end

