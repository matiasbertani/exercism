
class Series

  def initialize(string)
    @series = string
  end
    
  def slices(amount_of_slices)
    
    raise ArgumentError.new if not amount_of_slices.between?(1, @series.length)

    (0..@series.length - amount_of_slices).map {
      |i| @series[i...i + amount_of_slices]
    }

  end
end