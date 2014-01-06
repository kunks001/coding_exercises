class Operator

	attr_reader :commands

	def initialize(commands,rover)
		@commands = commands
		@rover = rover
	end

	def send_instructions
		case commands
			when 'M' then @rover.move
			when 'L' then @rover.turn_left
			when 'R' then @rover.turn_right
		end
	end
end