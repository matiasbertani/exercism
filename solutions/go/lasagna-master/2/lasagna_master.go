package lasagna
const (
	defautlPreparationTimePerLayer = 2
	noodleQuantityPerLayer         = 50
	sauceQuantityPerLayer          = 0.2
	defaultServingInRecipe         = 2
)

func PreparationTime(layers []string, timePerLayer int) int {
    if timePerLayer == 0 {
        timePerLayer = defautlPreparationTimePerLayer
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
	return noodleQuantityPerLayer * noodles, sauceQuantityPerLayer * float64(sauce)
}

func AddSecretIngredient(friendIngredients, ownIngredients []string) {
    ownIngredients[len(ownIngredients) -1] = friendIngredients[len(friendIngredients) -1]
}

func ScaleRecipe(quantities []float64, numberOfPortions int) []float64 {

    scalingFactor := float64(numberOfPortions) / 2
    newQuantities := make([]float64, len(quantities))

    for i, quantity := range quantities {
        newQuantities[i] = quantity * scalingFactor
    }

    return newQuantities
}
