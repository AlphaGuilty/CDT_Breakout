extends KinematicBody2D

var velocity = Vector2()
var SPEED = 500
onready var TileMap=$TileMap
export var barlength=6

func _ready():
	bar_length(barlength)

func bar_length(length):
	var cell=0
	TileMap.set_cell(cell,0,0)
	for i in range(1,length-1):
		cell+=1
		TileMap.set_cell(cell,0,2)
	TileMap.set_cell(cell,0,1)
	
func _physics_process(delta):
	position.y=590
	var move_input = Input.get_axis("P1_move_left","P1_move_right")
	velocity.x = move_input * SPEED 
	velocity = move_and_slide(velocity, Vector2.UP)

