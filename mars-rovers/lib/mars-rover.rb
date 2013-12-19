require './lib/direction'

class MarsRover

  attr_reader :x_coord
  attr_reader :y_coord
  attr_reader :direction

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
    if direction == 'N'
      @y_coord += 1
    elsif direction == 'S'
      @y_coord -= 1
    elsif direction == 'E'
      @x_coord += 1
    elsif direction == 'W'
      @x_coord -= 1
    end
  end
end