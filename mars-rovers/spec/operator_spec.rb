require './lib/operator'
require './lib/direction'

describe Operator do

	context 'should be able to command a mars rover to' do

		let(:rover) { double('Rover') }

		it 'move' do
			operator = Operator.new('M',rover)
			expect(rover).to receive(:move)
			operator.send_instructions
		end

		it 'turn left' do
			operator = Operator.new('L',rover)
			expect(rover).to receive(:turn_left)
			operator.send_instructions
		end

		it 'turn right' do
			operator = Operator.new('R',rover)
			expect(rover).to receive(:turn_right)
			operator.send_instructions
		end
	end

	# context 'should be able to interpret multiple instructions' do
	# end

end