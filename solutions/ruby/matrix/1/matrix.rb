
class Matrix
  def initialize(matrix_as_string)
    @matrix = []
    matrix_as_string.split("\n").each do |row_str|
      row = []
      row_str.split(" ") do |element|
        row.append(element.to_i)
      end
      @matrix.append(row)
    end
  end

  def row(index)
    @matrix[index - 1]
  end

  def column(index)
    @matrix.map { |row| row[index - 1] }
  end
end