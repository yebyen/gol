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
  def initialize(y=0,x=0,file=nil)
    @width=x
    @height=y
    @board_map={}
    unless file.nil?
      f = File.new(file)
      y = 0
      while line = f.gets
        x = 0
        line.split("").each do|c|
          case c
          when '.'
            x += 1
          when '*'
            Cell.new(Coord.new(x,y), self)
            x += 1
          when "\n"
            #noop
          else
            raise
          end
        end
        y += 1
      end
    end
  end
  def to_s
    s = ""
    @height.times do |y|
      @width.times do |x|
        if has_life_at?(Coord.new(x,y))
          s += '▮'
        else
          s += ' '
        end
      end
      s += "\n"
    end
    s.chomp
  end
  def add(cell)
    if (cell.coord.x <= @width && cell.coord.y <= @height &&
       cell.coord.x >= 0 && cell.coord.y >= 0) || (@width==0 && @height==0)
      unless @board_map.key?(cell.coord)
        @board_map[cell.coord] = cell
      else
        raise
      end
    end
  end
  def move
    b_new = Board.new(@height,@width)
    all_coords = {}
    self.each_value do |cell|
      all_coords[cell.coord] = cell.coord
      cell.coord.neighbors.each do |coord|
        all_coords[coord] = coord
      end
    end
    all_coords.each_key do |coord|
      if Coord.lives?(@board_map[coord], coord, self)
        Cell.new(coord,b_new)
      end
    end
    b_new
  end
end
