class Operator

	attr_reader :commands

	def initialize(commands,rover)
		@commands = commands
		@rover = rover
	end

	def send_instructions
		commands.chars.each do |char|
		# case commands
			case char
				when 'M' then @rover.move
				when 'L' then @rover.turn_left
				when 'R' then @rover.turn_right
			end
		end
	end
end