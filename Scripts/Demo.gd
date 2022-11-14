extends Node2D

export (PackedScene) var maxbar 
onready var ball_exit = $Ball/ball_exit
func _ready():
	randomize()
	ball_exit.connect("screen_exited",self,"on_screen_exited")

func on_screen_exited():
	var p = maxbar.instance()
	add_child(p)
	p.global_position=Vector2(rand_range(50,550),300)
	
