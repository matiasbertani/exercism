module Year

  def self.leap? year
    divisible(year, 4) and not divisible(year, 100) or divisible(year, 400)
  end

  def self.divisible(a, b)
    a % b == 0
  end
end