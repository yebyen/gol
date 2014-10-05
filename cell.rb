class Cell
  attr_accessor :board
  def initialize(c,board)
    @x = c.x
    @y = c.y
    @board = board
  end
  def at?(x,y)
    @x==x && @y==y
  end
  def coord
    Coord.new(@x,@y)
  end
  def lives?
    Coord.lives?(self,coord,board)
  end
end
