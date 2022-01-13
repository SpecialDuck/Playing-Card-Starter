extends TextureButton

class_name Card

signal card_clicked

# Suit numbers included as constants for reference/convenience
const HEARTS = 1
const CLUBS = 2
const SPADES = 3
const DIAMONDS = 4

var suit	# Hearts, Clubs, Spades, Diamonds
var value	# 1-13, e.g. 1 = Ace, 11 = Jack, etc.
var face	# Image resource to display on front of card
var back	# Image resource to display on back of card

func _ready():
	set_h_size_flags(3)
	set_v_size_flags(3)
	set_expand(true)
	set_stretch_mode(TextureButton.STRETCH_KEEP_ASPECT_CENTERED)

func _init(var st, var val):
	self.suit = st
	self.value = val
	self.face = load("res://Assets/Images/Cards/card-%s-%s.png" % [suit, value])
	self.back = GameController.cardBack
	set_normal_texture(self.face)

func _pressed():
	emit_signal("card_clicked", self)

func flip():
	if get_normal_texture() == self.back:
		set_normal_texture(self.face)
	else:
		set_normal_texture(self.back)
