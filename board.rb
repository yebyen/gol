class Board
  attr_accessor :board
  def has_life_at?(coord)
    @board.each do |cell|
      return true if cell.at?(coord.x,coord.y)
    end
    return false
  end
  def add(c)
    @board<<c
  end
  def initialize
    @board=[]
  end
end
