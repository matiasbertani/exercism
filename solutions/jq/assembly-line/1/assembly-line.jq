def production_rate_per_hour:
  def production: . * 221;
  if . <= 4 then production
  elif . <= 8 then production * 0.9
  elif . == 9 then production * 0.8
  elif . == 10 then production * 0.77
  end
;

def working_items_per_minute:
  ( . | production_rate_per_hour) / 60 | trunc
;

.speed | (production_rate_per_hour, working_items_per_minute)
