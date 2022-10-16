extends KinematicBody2D

var l=2
onready var animated=get_node("AnimatedSprite")

func hits():
	l-=1;
	if l==1:
		animated.frame+=1
	if l==0:
		queue_free()
