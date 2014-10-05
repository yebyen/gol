class Cell
  attr_accessor :board
  def initialize(c,board)
    @x = c.x
    @y = c.y
    @board = board
    @board.add self
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
  def neighbors(b)
    num_neighbors = 0
    self.coord.neighbors.each do|c|
      if b.has_life_at?(c)
        num_neighbors += 1
      end
    end
    num_neighbors
  end
end
