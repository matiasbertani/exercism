package gross

func Units() map[string]int {
	return map[string]int{
		"quarter_of_a_dozen": 3,
		"half_of_a_dozen":    6,
		"dozen":              12,
		"small_gross":        120,
		"gross":              144,
		"great_gross":        1728,
	}
}

func NewBill() map[string]int {
	return map[string]int{}
}

func AddItem(bill, units map[string]int, item, unit string) bool {
	quantity, exist := units[unit]
	if !exist {
		return false
	}
	bill[item] += quantity
	return true
}

func RemoveItem(bill, units map[string]int, item, unit string) bool {

	_, itemExist := bill[item]
	if !itemExist {
		return false
	}

	quantity, unitExist := units[unit]
	if !unitExist {
		return false
	}

	newQuantity := bill[item] - quantity

	if newQuantity < 0 {
		return false
	} else if newQuantity == 0 {
		delete(bill, item)
		return true
	} else {
		bill[item] = newQuantity
		return true
	}
}

func GetItem(bill map[string]int, item string) (int, bool) {
	quantity, exist := bill[item]
	return quantity, exist
}
