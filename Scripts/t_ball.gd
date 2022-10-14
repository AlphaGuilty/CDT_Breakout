extends KinematicBody2D

# Called when the node enters the scene tree for the first time.
var start_location
export var SPEED = 500

onready var lad=$"../ladrillos"
var direction=Vector2(0.5,1)
func _ready():
	start_location = position

func _physics_process(delta):
	direction=direction.normalized()
	var velocity=SPEED*direction*delta
	var collision=move_and_collide(velocity)
	if collision !=null:
		if collision.collider.collision_layer & 4:
			var c=collision.get_instance_id()
			collision.collider.hits()
			lad.n-=1
			if lad.n==0:
				get_tree().change_scene("res://Scene/game_over.tscn")
		
		direction=direction.bounce(collision.normal)
