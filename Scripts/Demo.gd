extends Node2D

export (PackedScene) var maxbar 
export (PackedScene) var minbar 
export (PackedScene) var pluslife 
onready var lad=$"Bar"
onready var hud = $HUD
onready var ball_exit = $Ball/ball_exit
func _ready():
	randomize()
	ball_exit.connect("screen_exited",self,"on_screen_exited")

func on_screen_exited():
	var t = Timer.new()
	t.set_wait_time(rand_range(5,10))
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	if hud.lives<=4 and hud.lives>2:
		if lad.estado=="normal" or lad.estado=="small":
			var g = maxbar.instance()
			add_child(g)
			g.global_position=Vector2(rand_range(100,500),200)
	elif hud.lives<=2:
		var tt = Timer.new()
		tt.set_wait_time(rand_range(5,10))
		tt.set_one_shot(true)
		self.add_child(tt)
		tt.start()
		yield(tt, "timeout")	
		var l = pluslife.instance()
		add_child(l)
		l.global_position=Vector2(rand_range(100,500),200)
	else:
		if lad.estado=="normal" or lad.estado=="big":
			var p = minbar.instance()
			add_child(p)
			p.global_position=Vector2(rand_range(100,500),200)
