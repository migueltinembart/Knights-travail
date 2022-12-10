require 'pry'
class Knight
  attr_accessor :position, :parent
  attr_reader :moves

  MOVESET = [[1, 2], [2, 1], [-1, 2], [-2, 1], [1, -2], [2, -1], [-1, -2], [-2, -1]].freeze

  # behaves like a node with infinite children
  def initialize(position, parent = nil)
    @position = position
    @moves = possible_moves(position)
    @parent = parent
  end

  def ==(other)
    other.class == Array && (position[0] == other[0] && position[1] == other[1])
  end

  private

  def possible_moves(position)
    possible_destinations = []
    MOVESET.each do |coordinate|
      x = position[0] + coordinate[0]
      y = position[1] + coordinate[1]
      possible_destinations.push([x, y]) if x.between?(0, 7) && y.between?(0, 7)
    end
    possible_destinations
  end
end
