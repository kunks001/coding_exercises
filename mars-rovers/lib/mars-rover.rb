require './lib/direction'

class MarsRover

  attr_reader :x_coord
  attr_reader :y_coord
  attr_accessor :direction

  def initialize(x=3,y=3,d='N')
    @x_coord=x
    @y_coord=y
    @direction=d
  end

  def turn_right
    @direction = Direction.right_of(direction)
  end
end