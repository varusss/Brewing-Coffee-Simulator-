extends TextureButton

var itemadd = preload("res://Godot-Inventory-master/Inventory.gd");
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Coffee_Cup_pressed():
	self.visible = false;
