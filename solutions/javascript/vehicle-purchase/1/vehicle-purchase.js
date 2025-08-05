export function needsLicense(kind) {
  if (kind === "car" || kind === "truck"){
    return true    
  }else{
    return false
  }
}

export function chooseVehicle(option1, option2) {
  if (option1[0] < option2[0]){
     return option1 + ' is clearly the better choice.'
  }
  return option2 + ' is clearly the better choice.'
}

export function calculateResellPrice(originalPrice, age) {
  let disccount = 0
  if (age < 3){disccount = 0.8}
  else if (age > 10) {disccount = 0.5}
  else {disccount = 0.7}
  return originalPrice * disccount;
}
