require 'spec_helper'
require 'conways'

describe "conways" do

  it "has a board" do
    board = Conways.new
  end

  it "can have cells in the board" do
    board = Conways.new
    board.add(Cell.new(0,0))
    board.add(Cell.new(0,1))
    board.add(Cell.new(1,1))
    expect(board.size).to be 3
  end

  it "can tell you if a cell is alive or dead" do
  	board = Conways.new
  	board.add(Cell.new(0,0))
  	expect(board.is_alive?(0,0)).to be true
  	expect(board.is_alive?(1,1)).to be false
  end

end
