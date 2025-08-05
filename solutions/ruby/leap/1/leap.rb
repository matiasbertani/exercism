=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end
module Year

  def self.leap? year
    return false if not divisible(year, 4)
    return false if divisible(year, 100) and not divisible(year, 400)
    true
  end

  def self.divisible(a, b)
    a % b == 0
  end
end