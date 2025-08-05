// Package weather forecast the current weather condition of various cities in Goblinocus.
package weather

// CurrentCondition represents the weather condition we want to forecast.
var CurrentCondition string

// CurrentLocation represents the city where we want to know the condition.
var CurrentLocation string

// Forecast returns a string with the weather condition for a specific city 
// both are given as argument as strings.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
