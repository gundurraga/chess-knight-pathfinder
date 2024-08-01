class Knight
  MOVES = [
    [-2, -1], [-2, 1], [-1, -2], [-1, 2],
    [1, -2], [1, 2], [2, -1], [2, 1]
  ]

  def initialize(board)
    @board = board
  end

  def knight_moves(start, target)
    queue = [[start, [start]]]
    visited = Set.new([start])

    until queue.empty?
      current, path = queue.shift

      return path if current == target

      possible_moves(current).each do |move|
        next if visited.include?(move)

        visited.add(move)
        queue.push([move, path + [move]])
      end
    end

    [] # Return empty array if no path is found
  end

  private

  def possible_moves(position)
    x, y = position
    MOVES.map { |dx, dy| [x + dx, y + dy] }
         .select { |new_x, new_y| @board.valid_move?(new_x, new_y) }
  end
end
