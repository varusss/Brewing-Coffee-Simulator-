extends LineEdit

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var camPos = get_node("../CabinetZoom")
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _on_CabinetCode_text_changed(new_text):
	if new_text.to_lower() == "344":
		self.set("custom_colors/font_color", Color(60, 94, 22))
		self.set_editable(false)
		self.hide()
		camPos.hide()
	pass # replace with function body
