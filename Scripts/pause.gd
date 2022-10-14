extends MarginContainer

onready var continu = $VBoxContainer/Continue
onready var menu = $VBoxContainer/Menu
onready var how = $VBoxContainer/HtP
onready var exit = $VBoxContainer/Exit

onready var hud = $"../HUD"
onready var ball = $"../Ball"

var estado = true

func _ready():
	continu.connect("pressed",self,"on_continu_pressed")
	menu.connect("pressed",self,"on_menu_pressed")
	how.connect("pressed",self,"on_how_pressed")
	exit.connect("pressed",self,"on_exit_pressed")
	hide()
	
func _input(event):
	if event.is_action_pressed("menu"):
		visible= !visible
		get_tree().paused=visible	
func on_continu_pressed():
	hide()
	get_tree().paused=false
	
func on_menu_pressed():
	get_tree().paused=false
	estado=false
	get_tree().change_scene("res://Scene/Main_Menu.tscn")
	
func on_how_pressed():
	get_tree().paused=false
	estado=false
	get_tree().change_scene("res://Scene/HowToPlay.tscn")
	
	
func on_exit_pressed():
	get_tree().quit()

func _on_VisibilityNotifier2D_screen_exited():
	if estado:
		hud.lives-=1
		if hud.lives==0:
			get_tree().change_scene("res://Scene/game_over.tscn")
		ball.position = ball.start_location
