extends Area2D

var SPEED = 450
onready var power=$"../Bar"
onready var hud = $"../HUD"

func _ready():
	connect("body_entered", self, "_on_body_entered")

func _physics_process(delta):
	position += SPEED * transform.y * delta

func _on_body_entered(body: Node):
	if body.has_method("bar_length"):
		hud.lives+=1
		
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
