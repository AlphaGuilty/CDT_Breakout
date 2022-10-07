extends MarginContainer

var lives = 4 setget set_lives

onready var lives_label = $Lives

func set_lives(value):
	lives = value
	lives_label.text= "x : %d"% lives
