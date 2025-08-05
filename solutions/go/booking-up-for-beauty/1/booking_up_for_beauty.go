package booking

import "time"
import "fmt"

func Schedule(date string) time.Time {
    t, err := time.Parse("1/2/2006 15:04:05", date)
    if err != nil {
		panic(fmt.Sprintf("Error parsing the date: %v", err))
    }
	return t
}

func HasPassed(date string) bool {
    t, err := time.Parse("January 2, 2006 15:04:05", date)
    if err != nil {
		panic(fmt.Sprintf("Error parsing the date: %v", err))
    }
	return t.Before(time.Now())
}

func IsAfternoonAppointment(date string) bool {

    t, err := time.Parse("Monday, January 2, 2006 15:04:05", date)
    if err != nil {
		panic(fmt.Sprintf("Error parsing the date: %v", err))
    }

    hour := t.Hour()
    return 12 <= hour && hour < 18
}

func Description(date string) string {
    t := Schedule(date)
    return t.Format("You have an appointment on Monday, January 2, 2006, at 15:04.")
    
}

func AnniversaryDate() time.Time {
    return time.Date(time.Now().Year(), time.September, 15, 0, 0, 0, 0, time.UTC)
}

