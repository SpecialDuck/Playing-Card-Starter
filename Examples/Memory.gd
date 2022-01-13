extends Game

var card1
var card2

func dealGame():
	for card in deck:
		card.flip()
		card.connect("card_clicked", self, "cardClicked")
		$GridContainer.add_child(card)

func cardClicked(card):
	if card1 == null:
		card1 = card
		card1.flip()
		card1.set_disabled(true)
	elif card2 == null:
		card2 = card
		card2.flip()
		card2.set_disabled(true)
		checkCards()

func checkCards():
	if card1.value == card2.value:
		$MatchTimer.start()
	else:
		$FlipTimer.start()

func _on_FlipTimer_timeout():
	card1.flip()
	card1.set_disabled(false)
	card2.flip()
	card2.set_disabled(false)
	card1 = null
	card2 = null

func _on_MatchTimer_timeout():
	var fadecolor = Color(0.5,0.5,0.5,0.5)
	card1.set_modulate(fadecolor)
	card2.set_modulate(fadecolor)
	card1 = null
	card2 = null
