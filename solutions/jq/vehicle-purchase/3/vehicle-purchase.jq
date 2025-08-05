def needs_license: . == "car" or . == "truck";


def choose_vehicle: "\(min) is clearly the better choice.";

def resell_price:
  if .age < 3 then .original_price * 0.80
  elif .age <= 10 then .original_price * 0.70
  else .original_price * 0.50
  end
;
