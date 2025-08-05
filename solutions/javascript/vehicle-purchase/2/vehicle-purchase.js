const VEHICLES_WITH_LICENSES = ["car", "truck"]

export function needsLicense(kind) {
  return VEHICLES_WITH_LICENSES.includes(kind)
}

export function chooseVehicle(option1, option2) {
  return (option1 < option2 ? option1 : option2) + ' is clearly the better choice.'
}

export function calculateResellPrice(originalPrice, age) {
  let disccount = 0
  if (age < 3){disccount = 0.8}
  else if (age > 10) {disccount = 0.5}
  else {disccount = 0.7}
  return originalPrice * disccount;
}
