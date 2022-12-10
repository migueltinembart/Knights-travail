require_relative './lib/game_board'

t1 = Time.now
game = GameBoard.new
start = [0,0]
finish = [7,3]
knight = game.knight_moves(start, finish)
puts "You made it in #{knight.length - 1} moves!  Here's your path:"
knight.each { |move| p move.position }
t2 = Time.now
puts "Time spent for this operation... #{t2 - t1}"
