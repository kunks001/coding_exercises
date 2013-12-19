require './lib/mars-rover'
require './lib/direction'

describe MarsRover do

  def mars_rover_facing(x, y, direction)
    @rover = MarsRover.new(x,y, direction)
  end

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
      mars_rover_facing(3,3,'N')
      @rover.turn_right
      expect(@rover.direction).to eq 'E'
    end

    it "should start facing east, end up facing south" do
      mars_rover_facing(3,3,'E')
      @rover.turn_right
      expect(@rover.direction).to eq 'S'
    end

    it "should start facing south, end up facing west" do
      mars_rover_facing(3,3,'S')
      @rover.turn_right
      expect(@rover.direction).to eq 'W'
    end

    it "should start facing west, end up facing north" do
      mars_rover_facing(3,3,'W')
      @rover.turn_right
      expect(@rover.direction).to eq 'N'
    end
  end

  context 'when turning left' do

    it "should start facing north, end up facing west" do
      mars_rover_facing(3,3,'N')
      @rover.turn_left
      expect(@rover.direction).to eq 'W'
    end

    it "should start facing west, end up facing south" do
      mars_rover_facing(3,3,'W')
      @rover.turn_left
      expect(@rover.direction).to eq 'S'
    end

    it "should start facing south, end up facing east" do
      mars_rover_facing(3,3,'S')
      @rover.turn_left
      expect(@rover.direction).to eq 'E'
    end

    it "should start facing east, end up facing north" do
      mars_rover_facing(3,3,'E')
      @rover.turn_left
      expect(@rover.direction).to eq 'N'
    end
  end

  context "when moving" do

    it "should increase its y-coordinate if facing north" do
      mars_rover_facing(3,3,'N')
      expect{ @rover.move }.to change { @rover.y_coord }.by(1)
    end

    it "should decrease its y-coordinate if facing south" do
      mars_rover_facing(3,3,'S')
      expect{ @rover.move }.to change { @rover.y_coord }.by(-1)
    end

    it "should increase its x-coordinate if facing east" do
      mars_rover_facing(3,3,'E')
      expect{ @rover.move }.to change { @rover.x_coord }.by(1)
    end

    it "should decrease its x-coordinate if facing west" do
      mars_rover_facing(3,3,'W')
      expect{ @rover.move }.to change { @rover.x_coord }.by(-1)
    end

  end
end