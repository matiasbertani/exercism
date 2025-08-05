package lasagna

func PreparationTime(layers []string, timePerLayer int) int {
    if timePerLayer == 0 {
        timePerLayer = 2
    }
	return len(layers) * timePerLayer
}

func Quantities(layers []string) (int,  float64){
    noodles := 0
    sauce := 0

    for _, layer := range layers {
        if layer == "noodles" {noodles++}
        if layer == "sauce" {sauce++}
    }
	return 50 * noodles, float64(0.2) * float64(sauce)
}

func AddSecretIngredient(friendIngredients, ownIngredients []string) []string {
    ownIngredients[len(ownIngredients) -1] = friendIngredients[len(friendIngredients) -1]
    return ownIngredients
}

func ScaleRecipe(quantities []float64, numberOfPortions int) []float64 {
    var newQuantities []float64
    newQuantities = append(newQuantities, quantities...)
    for i, quantity := range quantities {
        newQuantities[i] = quantity / 2 * float64(numberOfPortions)
    }
    return newQuantities
}
