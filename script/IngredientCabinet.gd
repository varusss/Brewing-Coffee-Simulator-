extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var pos = Vector2(1500,800)
onready var camPos = get_node("../Cam")
onready var button = get_node("../Cam/Camera2D/Button3")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_IngredientCabinet_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		camPos.set_position(pos)
		button.show()
	pass # replace with function body
