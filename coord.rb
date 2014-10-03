class Coord
  attr_accessor :board
  attr_accessor :x, :y
  def self.life_at?(board, coord)
    board.has_life_at?(coord)
  end
  def initialize(x,y)
    @x = x
    @y = y
  end
  def neighbors
    [Coord.new(@x-1,@y-1),
     Coord.new(@x-1,@y  ),
     Coord.new(@x-1,@y+1),
     Coord.new(@x  ,@y-1),
     Coord.new(@x  ,@y+1),
     Coord.new(@x+1,@y-1),
     Coord.new(@x+1,@y  ),
     Coord.new(@x+1,@y+1)]
  end
end
