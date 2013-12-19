class MarsRover

  attr_reader :x_coord
  attr_reader :y_coord
  attr_reader :direction

  def initialize(x=3,y=3,d='N')
    @x_coord=x
    @y_coord=y
    @direction=d
  end
end