extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var pos1 = Vector2(0,800);

onready var cam = get_node("../../../Cam")
onready var forward = get_node("../Button");
onready var backward = get_node("../Button2");

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Menu_pressed():
	cam.set_position(pos1);
	forward.hide()
	backward.hide()
	pass # replace with function body
