extends CanvasLayer

onready var restart = $PanelContainer/MarginContainer/VBoxContainer/CenterContainer/VBoxContainer/Restart
onready var menu = $PanelContainer/MarginContainer/VBoxContainer/CenterContainer/VBoxContainer/Menu
onready var exit = $PanelContainer/MarginContainer/VBoxContainer/CenterContainer/VBoxContainer/Exit

func _ready():
	restart.connect("pressed",self,"on_restart_pressed")
	menu.connect("pressed",self,"on_menu_pressed")
	exit.connect("pressed",self,"on_exit_pressed")
	
func on_restart_pressed():
	get_tree().change_scene("res://Scene/Demo.tscn")
	
func on_menu_pressed():
	get_tree().change_scene("res://Scene/Main_Menu.tscn")
	
func on_exit_pressed():
	get_tree().quit()
