extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var pos = Vector2(0,0);
onready var cam = get_node("../Cam")
onready var forward = get_node("../Cam/Camera2D/Button");
onready var backward = get_node("../Cam/Camera2D/Button2");
onready var panel = get_node("../Cam/Camera2D/GridContainer");


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Close_pressed():
	cam.set_position(pos)
	forward.show()
	backward.show()
	panel.show()
	pass # replace with function body
