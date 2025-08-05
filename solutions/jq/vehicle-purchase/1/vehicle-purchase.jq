def needs_license: 
  if . == "car" then true 
  elif . == "truck" then true 
  else false
  end
 ;

def choose_vehicle: 
  if (.[0] < .[1]) then "\(.[0]) is clearly the better choice."
  else "\(.[1]) is clearly the better choice."
  end
;

def resell_price:
  if .age < 3 then .original_price * 0.80
  elif .age <= 10 then .original_price * 0.70
  else .original_price * 0.50
  end
;
