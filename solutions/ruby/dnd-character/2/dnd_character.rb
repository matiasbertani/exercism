class DndCharacter

  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

  DICE_SIDES = 6
  DICES_TO_ROLL = 4
  DICES_TO_SUM = 3
  
  
  def self.modifier(constitution)
    ((constitution - 10)/2).round
  end

  def initialize
    @strength = random_ability_score
    @dexterity = random_ability_score
    @constitution = random_ability_score
    @intelligence = random_ability_score
    @wisdom = random_ability_score
    @charisma = random_ability_score
  end

  def random_ability_score
    DICES_TO_ROLL.times.map{ dice_roll }.max(DICES_TO_SUM).sum
  end

  def dice_roll
    rand(1..DICE_SIDES)
  end

  def hitpoints
    self.class.modifier(@constitution) + 10
  end
  
end
