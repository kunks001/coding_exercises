require './lib/mars-rover'

describe MarsRover do

  context 'a new MarsRover' do

    it 'should know its starting x-coordinate' do
      expect(MarsRover.new(3).x_coord).to eq 3
    end

    it 'should know its starting y-coordinate' do
      expect(MarsRover.new(3,2).y_coord).to eq 2
    end

    it 'should know its starting direction' do
      expect(MarsRover.new(3,2,'N').direction).to eq 'N'
    end
  end
end