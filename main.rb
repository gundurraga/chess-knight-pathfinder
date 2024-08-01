# In main.rb

require_relative 'board'
require_relative 'knight'

board = Board.new
knight = Knight.new(board)

start = [0, 0]
target = [7, 7]

path = knight.knight_moves(start, target)

puts "You made it in #{path.length - 1} moves! Here's your path:"
path.each { |position| puts position.inspect }
