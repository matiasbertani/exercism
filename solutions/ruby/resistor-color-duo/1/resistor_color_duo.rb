module ResistorColorDuo

  COLORS_VALUES = {  
    "black": "0",
    "brown": "1",
    "red": "2",
    "orange": "3",
    "yellow": "4",
    "green": "5",
    "blue": "6",
    "violet": "7",
    "grey": "8",
    "white": "9",
  }
  def self.value(colors)
    color_1, color_2 = colors.map &:to_sym
    (COLORS_VALUES[color_1] + COLORS_VALUES[color_2]).to_i
  end
end
