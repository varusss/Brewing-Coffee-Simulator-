extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var pos2 = Vector2(1500,0)
var pos3 = Vector2(3000,0)
var pos4 = Vector2(4500,0)
var pos1 = Vector2(0,0)
onready var cam = get_node("../../../Cam")
var num =1

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func Forward(var n):
	num= num + n
	get_input(num)
	pass

func get_input(num):
	if num > 4:
		num =1
	if num < 1:
		num = 4;
		
	if num == 1:
		cam.set_position(pos1);
	if num == 2:
		cam.set_position(pos2)
	if num == 3:
		cam.set_position(pos3)
	if num == 4:
		cam.set_position(pos4)
	
	pass

func _on_Button_pressed():
	Forward(1)
	if num > 4:
		num =1
	pass # replace with function body


func _on_Button2_pressed():
	Forward(-1)
	if num < 1:
		num = 4;
	pass # replace with function body


func _on_Button3_pressed():
	cam.set_position(pos3)
	pass # replace with function body
