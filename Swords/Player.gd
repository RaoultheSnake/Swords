extends KinematicBody2D
var speed = [0,0]


func _ready():


	pass

func _physics_process(delta):
	if InputEventAction("Move_Left"):
		speed.x = 1
		
	elif InputEventAction("Move_Right"):
	 	speed.x = -1
	
	
	if speed > 0:
		
	
		movement()
	
	pass

func _movement():
	
	
	
	pass

