extends LineEdit

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var recipe = get_node("../recipe")
onready var pot = get_node("../Water Pot")
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_DrawCode_text_changed(new_text):
	if new_text.to_lower() == "bean":
		self.set("custom_colors/font_color", Color(60, 94, 22))
		self.set_editable(false)
		recipe.show();
		pot.visible = true;
	pass # replace with function body
