
class Matrix
  def initialize(string)
    @matrix = string.split("\n").map {|row| row.split.map(&:to_i) }
  end

  def row(index)
    @matrix[index - 1]
  end

  def column(index)
    @matrix.transpose[index - 1]
  end
end