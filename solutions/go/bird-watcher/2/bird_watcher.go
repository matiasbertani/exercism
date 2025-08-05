package birdwatcher

func TotalBirdCount(birdsPerDay []int) int {
    birdCount := 0
    for _, birds := range birdsPerDay{
        birdCount += birds
    }
	return birdCount
}

func BirdsInWeek(birdsPerDay []int, week int) int {
	startOfWeek := 7  * (week - 1)
    stopOfWeek := startOfWeek + 7
    return TotalBirdCount(birdsPerDay[startOfWeek:stopOfWeek])
}

func FixBirdCountLog(birdsPerDay []int) []int {
	for i := 0; i < len(birdsPerDay); i += 2{
        birdsPerDay[i]++ 
    }
	return birdsPerDay
}
