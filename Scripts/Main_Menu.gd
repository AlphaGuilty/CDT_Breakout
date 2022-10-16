extends Node2D

onready var start = $VBoxContainer/Start
onready var credit = $VBoxContainer/Creditos
onready var htp = $VBoxContainer/HtP
onready var exit = $VBoxContainer/Exit

func _ready():
	start.connect('pressed', self, "_start_on_pressed")
	htp.connect('pressed', self, "_htp_on_pressed")
	credit.connect('pressed', self, "_credit_on_pressed")
	exit.connect('pressed', self, "_exit_on_pressed")	

func _start_on_pressed():
	get_tree().change_scene("res://Scene/Demo.tscn")

func _htp_on_pressed():
	get_tree().change_scene("res://Scene/HowToPlay.tscn")

func _credit_on_pressed():
	get_tree().change_scene("res://Scene/Credits.tscn")
	
func _exit_on_pressed():
	get_tree().quit()
