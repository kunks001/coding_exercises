require './lib/direction'

class MarsRover

  attr_reader :x_coord
  attr_accessor :y_coord
  attr_accessor :direction

  def initialize(x=3,y=3,d='N')
    @x_coord=x
    @y_coord=y
    @direction=d
  end

  def turn_right
    @direction = Direction.right_of(direction)
  end

  def turn_left
    @direction = Direction.left_of(direction)
  end

  def move
    @y_coord +=1 if direction == 'N'
  end
end