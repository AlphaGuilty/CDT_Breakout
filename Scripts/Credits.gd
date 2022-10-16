extends Node2D

onready var back = $VBoxContainer3/Back

func _ready():
	back.connect('pressed', self, "_htp_on_pressed")

func _htp_on_pressed():
	get_tree().change_scene("res://Scene/Main_Menu.tscn")
