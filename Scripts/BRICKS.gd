extends KinematicBody2D

onready var BT=preload("res://Scene/brickTexture.tscn")
onready var BC=preload("res://Scene/brickCollision.tscn")

var velocity = Vector2()
var SPEED = 500
var ACCELERATION = 0

func group():
	var n=0
	for i in range(2):
		for j in range(3):
			var bt=BT.instance()
			var bc=BC.instance()
			bt.name = "BrickTexture "+str(n)
			bc.name = "BrickCollision "+str(n)
			bt.position=Vector2(200+64*(j),100+32*(i))
			bc.position=Vector2(200+64*(j),100+32*(i))
			add_child(bt)
			add_child(bc)
			n+=1

# Called when the node enters the scene tree for the first time.
func _ready():
	group()

func _physics_process(delta):
	
	var move_input_x = Input.get_axis("P2_move_left","P2_move_right")
	var move_input_y = Input.get_axis("P2_move_up","P2_move_down")
	
	velocity.x = move_input_x * SPEED
	velocity.y = move_input_y * SPEED
	
	velocity=move_and_slide(velocity, Vector2.ZERO).normalized()
