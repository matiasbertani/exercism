module Raindrops

  def self.convert number
    sounds = {
      3 => "Pling",
      5 => "Plang",
      7 => "Plong",
    }
    raindrops = sounds.map{ |n, sound| sound if divisible(number, n)}.join 
    raindrops.empty? ? number.to_s : raindrops
  end

  def self.divisible(a, b)
    a % b == 0
  end

end