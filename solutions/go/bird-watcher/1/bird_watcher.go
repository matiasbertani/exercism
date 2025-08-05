package birdwatcher

func TotalBirdCount(birdsPerDay []int) int {
    birdCount := 0
	for i := 0; i < len(birdsPerDay); i++{
        birdCount += birdsPerDay[i]
    }
	return birdCount
}

func BirdsInWeek(birdsPerDay []int, week int) int {
    birdCount := 0
	start := 7  * (week - 1)
    stop := start + 7
    for i := start; i < stop; i++{
        birdCount += birdsPerDay[i]
    }
    return birdCount
}

func FixBirdCountLog(birdsPerDay []int) []int {

	for i := 0; i < len(birdsPerDay); i++{
        if i % 2 == 0 {
            birdsPerDay[i]++ 
        }
    }
	return birdsPerDay
}
