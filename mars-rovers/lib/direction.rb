class Direction
	
	class << self

		def right_of(direction)
			if direction == 'N'
				'E'
			elsif direction == 'E'
				'S'
			elsif direction == 'S'
				'W'
			elsif direction == 'W'
				'N'
			end
		end

		def left_of(direction)
			if direction == 'N'
				'W'
			elsif direction == 'W'
				'S'
			elsif direction == 'S'
				'E'
			elsif direction == 'E'
				'N'
			end
		end
	end
end