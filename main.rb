require_relative './lib/game_board'

t1 = Time.now
game = GameBoard.new
x = game.knight_moves([0,0], [7,3])
p x
t2 = Time.now
puts "Time spent for this operation... #{t2 - t1}"
