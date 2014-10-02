#gem 'minitest'

require './hiker'
#require 'minitest/autorun'
require 'test/unit'

class TestHiker < Test::Test

  def test_empty_board
    life = Life.new
    assert_equal(
     [%w{. . . . .},
      %w{. . . . .},
      %w{. . . . .},
      %w{. . . . .},
      %w{. . . . .}], life.board)
  end

  def test_next
    b = Life.new
    assert_equal(
      (Life.next(b) <=> 
     [%w{. . . . .},
      %w{. . . . .},
      %w{. . . . .},
      %w{. . . . .},
      %w{. . . . .}]), 0)

  end

end
