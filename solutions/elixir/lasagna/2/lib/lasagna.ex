defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(minutes_in_the_oven),
    do: expected_minutes_in_oven() - minutes_in_the_oven

  def preparation_time_in_minutes(number_of_layers),
    do: number_of_layers * 2

  def total_time_in_minutes(number_of_layers, minutes_in_the_oven),
    do: preparation_time_in_minutes(number_of_layers) + minutes_in_the_oven

  def alarm, do: "Ding!"
end
