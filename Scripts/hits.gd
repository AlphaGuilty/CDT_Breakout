extends KinematicBody2D

var l=1
	
func hits():
	l-=1;
	if l==0:
		queue_free()
		
var velocity=Vector2()
func _physics_process(delta):
	if position.x==100:
		velocity=move_and_slide(velocity*0, Vector2.ZERO)
