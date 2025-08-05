def needs_license: . == "car" or . == "truck";

def choose_vehicle: "\(min) is clearly the better choice.";

def resell_price: 
  .original_price * (
    if .age < 3 then 0.80
    elif .age <= 10 then 0.70
    else 0.50
    end  
  )
;
