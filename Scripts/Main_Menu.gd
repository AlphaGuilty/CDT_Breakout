extends Node2D

onready var start = $VBoxContainer/Start
onready var credit = $VBoxContainer/Creditos
onready var htp = $VBoxContainer/HtP
onready var exit = $VBoxContainer/Exit

func _ready():
	htp.connect('pressed', self, "_htp_on_pressed")
	credit.connect('pressed', self, "_credit_on_pressed")
	exit.connect('pressed', self, "_exit_on_pressed")	
	pass 

func _htp_on_pressed():
	get_tree().change_scene("res://Scene/HowtoPlay.tscn")

func _credit_on_pressed():
	get_tree().change_scene("res://Scene/Credits.tscn")
	
func _exit_on_pressed():
	get_tree().quit()


