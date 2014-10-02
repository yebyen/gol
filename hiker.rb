class Life
  attr_accessor :board

  def initialize
    self.board = 
     [%w{. . . . .},
      %w{. . . . .},
      %w{. . . . .},
      %w{. . . . .},
      %w{. . . . .}]
  end

  def self.next(b)
    b.clone
  end
end
