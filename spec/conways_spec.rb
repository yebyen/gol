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

end
