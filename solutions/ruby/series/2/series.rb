
class Series

  def initialize(string)
    @series = string
  end
    
  def slices(slice_size)
    raise ArgumentError.new if @series.length < slice_size
    @series.chars.each_cons(slice_size).map(&:join)
  end
end