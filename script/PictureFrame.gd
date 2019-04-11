extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var check = true;
onready var pictureFrame = get_node("../scene1/AnimationPlayer")
onready var pictureFrame2 = get_node("../scene2/AnimationPlayer")
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_sc1FrameSwitch_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		if check == true:
			pictureFrame.play("FlipPictureFrame");
			check = false
		elif check == false:
			pictureFrame.play("returnNormal");
			check = true;
	pass # replace with function body


func _on_sc2FrameSwitch_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		if check == true:
			pictureFrame2.play("flip");
			check = false
		elif check == false:
			pictureFrame2.play("return");
			check = true;
	pass # replace with function body
