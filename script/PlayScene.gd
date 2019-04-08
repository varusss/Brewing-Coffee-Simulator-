extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var num = 1;
var pos1 = Vector2(1600,0)
var pos2 = Vector2(3100,0)
var pos3 = Vector2(4600,0)
var pos4 = Vector2(0,0)
var check = false;
onready var cam = get_node("Camera2D")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if Input.is_action_pressed('ui_right'):
		Forward(1)
	if Input.is_action_pressed('ui_left'):
		Forward(-1)
	pass

func Forward(var n):
	if check == false:
		num = num + n
		get_input(num)
		check =true
		print(num);
	pass

func get_input(num):
	if num == 1:
		cam.set_position(pos1);
	if num == 2:
		cam.set_position(pos2)
	if num == 3:
		cam.set_position(pos3)
	if num == 4:
		cam.set_position(pos4)
	
	check = false;
	pass
