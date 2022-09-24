extends KinematicBody2D

var velocity = Vector2()

var SPEED = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	var move_input = Input.get_axis("P2_move_left","P2_move_right")
	
	velocity.x = move_input * SPEED 
	
	velocity = move_and_slide(velocity, Vector2.UP)

func _on_body_entered(body: Node):
	pass
