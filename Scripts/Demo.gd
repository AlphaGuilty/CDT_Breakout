extends Node2D

onready var B=preload("res://Scene/BRICKS.tscn")

func group():
	var n=0
	for i in range(2):
		for j in range(3):
			var b=B.instance()
			b.position=Vector2(200+64*(j),100+32*(i))
			n+=1
			add_child(b)

# Called when the node enters the scene tree for the first time.
func _ready():
	group() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
