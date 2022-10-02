extends KinematicBody2D

var velocity = Vector2()

var SPEED = 500
var ACCELERATION = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	
	var move_input_x = Input.get_axis("P2_move_left","P2_move_right")
	var move_input_y = Input.get_axis("P2_move_up","P2_move_down")
	
	velocity.x = move_input_x * SPEED
	velocity.y = move_input_y * SPEED
	
	velocity=move_and_slide(velocity, Vector2.ZERO).normalized()

func _on_body_entered(body: Node):
	pass
