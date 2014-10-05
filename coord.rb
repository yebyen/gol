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
  def self.lives?(cell, coord, board)
    ns = coord.neighbors
    c = 0
    ns.each do|n|
      c += 1 if Coord.life_at?(board,n)
    end
    unless cell.nil?
      return true if (c==2 || c==3)
    else
      return true if c==3
    end
    false
  end
  def ==(other_object)
    if other_object.class == self.class
      if other_object.x == @x && other_object.y == @y
        return true
      end
    end
    false
  end
  def eql?(other)
    self == other
  end
  def hash
    [@x,@y].hash
  end
end
