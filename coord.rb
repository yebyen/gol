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
end
