extends Area2D

var SPEED = 50
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var aux = transform.x

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", self, "_on_body_entered")
	var start_location = position
	
func _physics_process(delta):
	position += SPEED * aux * delta
	
func _on_body_entered(body: Node):
	pass

	
