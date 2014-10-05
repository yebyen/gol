require 'forwardable'
require 'pry'

class Board
  attr_accessor :board

  include Enumerable
  extend Forwardable
  def_delegators :@board, :each #, :<<
  def has_life_at?(coord)
    @board.each do |cell|
      return true if cell.at?(coord.x,coord.y)
    end
    return false
  end
  def count
    @board.length
  end
  def initialize
    @board=[]
    @board_map={}
  end
  def add(cell)
    coords = [cell.coord.x, cell.coord.y]
    unless @board_map.key?(coords)
      @board_map[coords] = cell
    else
      raise
    end
    @board << cell
  end
end
