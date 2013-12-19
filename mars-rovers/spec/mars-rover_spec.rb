require './lib/mars-rover'
require './lib/direction'

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

  context 'when turning right' do

    it "should start facing north, end up facing east" do
      marsRover=MarsRover.new(3,3,'N')
      marsRover.turn_right
      expect(marsRover.direction).to eq 'E'
    end

    it "should start facing east, end up facing south" do
      marsRover=MarsRover.new(3,3,'E')
      marsRover.turn_right
      expect(marsRover.direction).to eq 'S'
    end

    it "should start facing south, end up facing west" do
      marsRover=MarsRover.new(3,3,'S')
      marsRover.turn_right
      expect(marsRover.direction).to eq 'W'
    end

    it "should start facing west, end up facing north" do
      marsRover=MarsRover.new(3,3,'W')
      marsRover.turn_right
      expect(marsRover.direction).to eq 'N'
    end
  end
end