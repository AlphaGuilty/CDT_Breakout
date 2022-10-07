extends RigidBody2D

# Called when the node enters the scene tree for the first time.
var start_location

func _ready():
	connect("body_entered", self, "_on_body_entered")
	start_location = position


