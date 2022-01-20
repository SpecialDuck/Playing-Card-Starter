extends Control

class_name Game

var deck = Array()

func _ready():
	initDeck()
	shuffleDeck()
	dealGame()

func initDeck():
	for suit in range(1,5):
		for value in range(1, 14):
			deck.append(Card.new(suit, value))

func shuffleDeck():
	# Use built-in array shuffle function. 
	# This could be replaced by a custom shuffle if desired.
	deck.shuffle()

# To be implemented by child
func dealGame():
	pass

#Removes a card from the deck
func dealCard(faceup:bool):
	var card = deck.pop_back()
	if not faceup:
		card.flip()
	return card
