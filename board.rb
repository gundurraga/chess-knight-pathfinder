class Board
  def initialize
    @grid = Array.new(8) { Array.new(8) }
  end

  def valid_move?(x, y)
    x.between?(0, 7) && y.between?(0, 7)
  end
end
