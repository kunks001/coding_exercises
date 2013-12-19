class Direction
	
	class << self

		def right_of(direction)
			direction == 'N' ? 'E' : 'S'
		end
	end
end