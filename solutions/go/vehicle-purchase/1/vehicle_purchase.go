package purchase

import "fmt"

func NeedsLicense(kind string) bool {
	return kind == "car" || kind == "truck"
}

func ChooseVehicle(option1, option2 string) string {
    var bestChoice string
    if option1 < option2{
		bestChoice = option1
    } else {
    	bestChoice = option2
    }
	return fmt.Sprintf("%s is clearly the better choice.", bestChoice)
}

func CalculateResellPrice(originalPrice, age float64) float64 {
	if age < 3 {
        return originalPrice * 0.8
    } else if age < 10 {
        return originalPrice * 0.7
    } else {
		return originalPrice * 0.5
    }
}
