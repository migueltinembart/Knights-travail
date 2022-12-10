class GameBoard
  require_relative 'knight'

  def knight_moves(start, finish)
    # start with a queue and the first Knights Position(push and shift methods)
    node = find_child(start, finish)
    puts "Shortest path from #{start} to #{finish}"
    x = create_childlist(node)
  end

  def create_childlist(node, child_list = [])
    return if node.nil?

    child_list.unshift(node)
    create_childlist(node.parent, child_list)
    child_list
  end

  private

  def find_child(start, finish)
    queue = [Knight.new(start)]
    visited = []
    loop do
      node = queue.shift
      # if node equals finish position break
      return node if node == finish

      node.moves.each do |move|
        new_knight = Knight.new(move, node)
        unless visited.include?(move)
          queue.push(new_knight)
          visited.push(new_knight)
        end
      end
    end
  end
end
