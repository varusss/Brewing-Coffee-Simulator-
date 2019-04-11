extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var pos = Vector2(3000,800)
onready var camPos = get_node("../Cam")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_Book_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		camPos.set_position(pos)
	pass # replace with function body
