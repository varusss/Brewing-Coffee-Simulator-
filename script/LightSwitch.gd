extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var sceneArray = [get_node("../scene1"),get_node("../scene2"),get_node("../scene3"),get_node("../scene4")];

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_LightSwitch_input_event(viewport, event, shape_idx):
	
	if (event is InputEventMouseButton && event.pressed):
		if sceneArray[0].is_visible():
			for i in range(0, sceneArray.size()):
				sceneArray[i].hide()
				
		elif sceneArray[0].is_visible() == false:
			for i in range(0, sceneArray.size()):
				sceneArray[i].show()

	pass # replace with function body
