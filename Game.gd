extends Control

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

func dealGame():
	$HBoxContainer.add_child(deck[0])
