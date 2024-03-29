# http://en.wikipedia.org/wiki/Conway's_Game_of_Life
# The rules for this game of life are: 
# Any live cell with fewer than two live neighbours dies, as if caused by exposure. 
# Any live cell with two live neighbours lives on to the next generation. 
# Any live cell with three live neighbours dies, as if by overcrowding. 
# Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction. 
# Neighbours are any two triangles that shares a side. 
require_relative 'lib/grid'

positions = 20.times.map do 
  rand(2)
end
grid = Grid.new(*positions)
generation_count = 1
1.upto(10) do |gen|
  puts "Generation ##{gen}"
  grid.raw_positions.each {|rp| print "#{rp} "}
  puts
  grid.next_generation! 
end
