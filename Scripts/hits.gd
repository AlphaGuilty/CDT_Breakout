extends KinematicBody2D

var l=1
	
func hits():
	l-=1;
	if l==0:
		queue_free()
