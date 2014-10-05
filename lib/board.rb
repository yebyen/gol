require 'forwardable'

class Board
  include Enumerable
  extend Forwardable
  def_delegators :@board_map, :each_value, :size
  def has_life_at?(coord)
    @board_map.each_value do |cell|
      return true if cell.at?(coord.x,coord.y)
    end
    return false
  end
  def initialize(y=0,x=0)
    @width=x
    @height=y
    @board_map={}
  end
  def to_s
    s = ""
    @height.times do |y|
      @width.times do |x|
        if has_life_at?(Coord.new(x,y))
          s += '*'
        else
          s += '.'
        end
      end
      s += "\n"
    end
    s.chomp
  end
  def add(cell)
    unless @board_map.key?(cell.coord)
      @board_map[cell.coord] = cell
    else
      raise
    end
  end
end
