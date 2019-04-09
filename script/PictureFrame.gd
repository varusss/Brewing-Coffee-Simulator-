extends Area2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var check = true;
onready var pictureFrame = get_node("../PictureFrame/Sprite/AnimationPlayer")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_PictureFrame_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		if check == true:
			pictureFrame.play("PictureFrame");
			check = false
		elif check == false:
			pictureFrame.play("PictureFrameFlip");
			check = true;
	pass # replace with function body
