class Move
  attr_accessor :board
  def initialize(board)
    @board = board
  end
  def move
    @board = board.move
  end
end
