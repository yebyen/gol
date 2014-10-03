require './life'

describe "life" do

  context "life board" do
    it "can enumerate cells" #do
    #end

    it "can make a move"

    it "kills a cell with no neighbors"

    it "kills a cell with one neighbor"

    it "lets a cell with two neighbors live"

    it "lets a cell with three neighbors live"

    it "kills a cell with more than three neighbors"

    it "has an event loop"

    it "has a display logic"

    it "reads an input board format from file or stdin"

  end

  context "cell" do
    it "knows its own position" do
      b = Board.new
      c = Cell.new(Coord.new(1,1), b)
      expect(c.coord.x).to be 1
      expect(c.coord.y).to be 1
    end

    it "given a board can count up its neighbors"

    it "can tell you if it should live or die"

    it "can breed when with enough neighbors"

  end

  context "coord" do
    it "has a position" do
      c = Coord.new(1,1)
      expect(c.x).to be 1
      expect(c.y).to be 1
    end

    it "returns its neighboring cells" do
      c = Coord.new(1,1)
      n = c.neighbors
      expect(n.length).to be 8
      #n.each
    end

    it "can be produced by a cell" #do
    #end

    it "can tell you if it should support life next turn" #do
    #end

    it "given a board can tell you if there is life at the coord" do
      b = Board.new
      co = Coord.new(1,1)
      c = Cell.new(co, b)
      expect(Coord.life_at?(b,c.coord)).to be false
      b.add(c)
      expect(Coord.life_at?(b,c.coord)).to be true
    end

  end

  context "move" #do
  #end

end
