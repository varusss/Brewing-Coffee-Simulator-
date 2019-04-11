extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
onready var camPos = get_node("Cam");
onready var button = get_node("Cam/Camera2D/Button3");

var time_start = 0
var time_now = 0
onready var label = get_node("Cam/Camera2D/Label");

func _ready():
	time_start = OS.get_unix_time()
	set_process(true)
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if camPos.get_position().y < 750:
		button.hide()
		
	time_now = OS.get_unix_time()
	var elapsed = time_now - time_start
	var minutes = elapsed / 60
	var seconds = elapsed % 60
	var str_elapsed = "%02d : %02d" % [minutes, seconds]
	label.set_text(str_elapsed);
	
	if (elapsed > 600):
		get_tree().change_scene("res://DieScene.tscn")
		print("You Die") 
	pass
