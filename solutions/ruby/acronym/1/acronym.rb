module Acronym
  def Acronym.abbreviate(phrase)
    phrase.gsub('-', ' ').split(' ').map {|word| word[0].upcase }.join
  end
end