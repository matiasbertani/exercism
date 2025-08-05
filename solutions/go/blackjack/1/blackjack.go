package blackjack

func ParseCard(card string) int {
    var parsedCard int
    switch card{
        case "ace": parsedCard = 11	
        case "two": parsedCard = 2	
        case "three": parsedCard = 3	
        case "four": parsedCard = 4	
        case "five": parsedCard = 5	
        case "six": parsedCard = 6	
        case "seven": parsedCard = 7	
        case "eight": parsedCard = 8
        case "nine": parsedCard = 9
        case "ten": parsedCard = 10
        case "jack": parsedCard = 10
        case "queen": parsedCard = 10
        case "king": parsedCard = 10
        default: parsedCard = 0   
    }
	return parsedCard
}

func FirstTurn(card1, card2, dealerCard string) string {
    var action string
	switch{
        case cardsSum(card1, card2) == 22:
    		action = "P"
        case cardsSum(card1, card2) == 21 && ParseCard(dealerCard) < 10:
    		action = "W"
        case  17 <= cardsSum(card1, card2):
    		action = "S"
        case  12 <= cardsSum(card1, card2) && ParseCard(dealerCard) < 7 :
    		action = "S"
        default: action = "H"
    }
	return action
}

func cardsSum(card1, card2 string) int{
    return ParseCard(card1) + ParseCard(card2)
}
