=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter

  
  def self.modifier(constitution)
    ((constitution - 10)/2).round
  end

  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

  def initialize
    @strength = random_ability_score
    @dexterity = random_ability_score
    @constitution = random_ability_score
    @intelligence = random_ability_score
    @wisdom = random_ability_score
    @charisma = random_ability_score
  end

  def random_ability_score
    4.times.map{ rand(1..6) }.max(3).sum
  end

  def hitpoints
    self.class.modifier(@constitution) + 10
  end
  
end
