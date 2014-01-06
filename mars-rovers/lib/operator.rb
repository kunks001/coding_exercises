class Operator

	# attr_reader :commands

	# def initialize
		# @commands = commands
		# @rover = rover
	# end

	def send_instructions(instructions,rover)
		instructions.chars.each do |instruction|
		# case commands
			case instruction
				when 'M' then rover.move
				when 'L' then rover.turn_left
				when 'R' then rover.turn_right
			end
		end
	end
end