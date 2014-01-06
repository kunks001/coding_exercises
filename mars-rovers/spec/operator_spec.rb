require './lib/operator'
require './lib/direction'

describe Operator do

	context 'should be able to command a mars rover to' do

		let(:rover) { double('Rover') }
		let(:operator) { Operator.new }

		it 'move' do
			# operator = Operator.new('M',rover)
			expect(rover).to receive(:move)
			operator.send_instructions('M',rover)
		end

		it 'turn left' do
			# operator = Operator.new('L',rover)
			expect(rover).to receive(:turn_left)
			operator.send_instructions('L',rover)
		end

		it 'turn right' do
			# operator = Operator.new('R',rover)
			expect(rover).to receive(:turn_right)
			operator.send_instructions('R',rover)
		end

		it 'follow multiple instructions' do
			# operator = Operator.new('RMRMLML',rover)
			expect(rover).to receive(:move).exactly(3).times
			expect(rover).to receive(:turn_left).exactly(2).times
			expect(rover).to receive(:turn_right).exactly(2).times
			operator.send_instructions('RMRMLML',rover)
		end

	end

end