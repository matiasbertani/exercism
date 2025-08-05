class Temperature
  def to_kelvin(celsius)
    celsius + 273.15
  end

  def round(celsius)
    celsius.round(1)
  end

  def to_fahrenheit(celsius)
    (celsius.round * 1.8 + 32).round
  end

  def number_missing_sensors(number_of_sensors)
    remaining = number_of_sensors % 4
    if remaining != 0
      4 - remaining
    else
      0
    end
  end
end
