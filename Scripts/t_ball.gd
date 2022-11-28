extends KinematicBody2D

onready var lad=$"../ladrillos"

export var SPEED = 200
var start_location
var direction=Vector2(0.5,1)

func _ready():
	start_location = position
	

func _physics_process(delta):
	direction=direction.normalized()
	var velocity=SPEED*direction*delta
	var collision=move_and_collide(velocity)
	if collision !=null:
		$AudioStreamPlayer2D.play()
		if SPEED < 900:
			SPEED += 25
		if collision.collider.collision_layer & 4:
			var c=collision.collider.name
			lad.v=c
			collision.collider.hits()
			lad.n-=1
			if lad.n==0:
				get_tree().change_scene("res://Scene/game_over.tscn")
		
		direction=direction.bounce(collision.normal)
