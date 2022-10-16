extends KinematicBody2D

onready var BT=preload("res://Scene/brick.tscn")
onready var s=preload("res://Scene/shape.tscn")
onready var bola=preload("res://Scene/ball.tscn")

var velocity = Vector2()
var SPEED = 500
var ACCELERATION = 0
var n=6
var v=""

func group():
	var k=1
	for i in range(2):
		for j in range(3):
			var bt=BT.instance()
			var S=s.instance()
			S.name= "shape "+str(k)
			S.position=Vector2(200+64*(j),100+32*(i))
			S.add_to_group("shapes")
			add_child(S)
			bt.name = str(k)
			bt.position=Vector2(200+64*(j),100+32*(i))
			add_child(bt)
			k+=1

func _ready():
	group()

func _physics_process(delta):
	for node in get_tree().get_nodes_in_group("shapes"):
		var NAME="shape "+v
		if (node.name==NAME):
			node.queue_free()	
	var move_input_x = Input.get_axis("P2_move_left","P2_move_right")
	var move_input_y = Input.get_axis("P2_move_up","P2_move_down")
	velocity.x = move_input_x * SPEED
	velocity.y = move_input_y * SPEED
	velocity=move_and_slide(velocity, Vector2.ZERO).normalized()
