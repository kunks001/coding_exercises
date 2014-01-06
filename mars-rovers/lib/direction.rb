class Direction
	
	class << self

		def right_of(direction)
			case direction
				when 'N' then 'E'
				when 'E' then 'S'
				when 'S' then 'W'
				when 'W' then 'N'
			end
			# if direction == 'N'
			# 	'E'
			# elsif direction == 'E'
			# 	'S'
			# elsif direction == 'S'
			# 	'W'
			# elsif direction == 'W'
			# 	'N'
			# end
		end

		def left_of(direction)
			case direction
				when 'N' then 'W'
				when 'W' then 'S'
				when 'S' then 'E'
				when 'E' then 'N'
			end
			# if direction == 'N'
			# 	'W'
			# elsif direction == 'W'
			# 	'S'
			# elsif direction == 'S'
			# 	'E'
			# elsif direction == 'E'
			# 	'N'
			# end
		end
	end
end