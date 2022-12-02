extends Area2D

var SPEED = 350
onready var power=$"../Bar"

func _ready():
	connect("body_entered", self, "_on_body_entered")

func _physics_process(delta):
	position += SPEED * transform.y * delta

func _on_body_entered(body: Node):
	if body.has_method("bar_length"):
		if power.estado=="small":
			body.bar_length(10)
			power.estado="normal"
		else:
			body.bar_length(14)
			power.estado="big"
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

