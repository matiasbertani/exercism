package cards

func FavoriteCards() []int {
	return []int{2, 6, 9}
}

func GetItem(slice []int, index int) int {
    if indexOutOfBound(slice, index) {
        return -1
    }
	return slice[index]
}

func SetItem(slice []int, index, value int) []int {
    if indexOutOfBound(slice, index) {
        slice = append(slice, value)
    } else {
    	slice[index] = value
    }
	return slice
}

func PrependItems(slice []int, values ...int) []int {
	return append(values, slice...)
}

func RemoveItem(slice []int, index int) []int {
    if indexOutOfBound(slice, index) {
        return slice
    }
    return append(slice[:index], slice[index + 1:]...)
}

func indexOutOfBound(slice []int, index int) bool {
    return index < 0 || len(slice) <= index
}
