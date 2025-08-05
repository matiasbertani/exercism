package raindrops

import "fmt"

func Convert(number int) string {
    sounds := map[int]string{
        3: "Pling",
        5: "Plang",
        7: "Plong",
    }
	raindrops := ""
	for n, sound := range sounds {
        if isDivisible(number, n){
            raindrops += sound
        }
    }
	if raindrops == "" {
        return fmt.Sprintf("%d", number)
    }
	return raindrops
}

func isDivisible(a, b int) bool {
	return a % b == 0    
}
