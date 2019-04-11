extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

onready var anim = get_node("../Sprite/AnimationPlayer")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if anim.is_playing() == false:
		get_tree().change_scene("res://Scene/MenuScene.tscn")
	pass
