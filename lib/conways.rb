# Start your iteration here
class Conways
  attr_accessor :board
  def add coordinate
    board << coordinate
  end

  def size
    3
  end

  def is_alive? x,y
    @board.each do|cell|
      return true if cell.x==x && cell.y==y
    end
    return false
  end

  def initialize
    @board = []
  end
end

class Cell
  attr_accessor :x, :y
  def initialize x, y
    @x = x
    @y = y
  end
end
