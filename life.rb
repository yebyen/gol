#!/usr/bin/env ruby
require './lib/coord'
require './lib/cell'
require './lib/board'
require './lib/move'

m = Move.new(Board.new(4,8,"board.txt"))
c = 0
while true do
  system("clear")
  puts m.board
  puts
  puts "Generation: #{c}"
  sleep 1
  c += 1
  m.move
end
