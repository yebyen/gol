require 'forwardable'
require 'pry'

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
  def initialize
    @board_map={}
  end
  def add(cell)
    unless @board_map.key?(cell.coord)
      @board_map[cell.coord] = cell
    else
      raise
    end
  end
end
