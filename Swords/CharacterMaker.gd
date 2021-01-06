extends Node2D

#one of three creator tscns
#Character
#Weapon
#Kata

#head: round cranium + face structure
#body: smoothed trapezoid, 
#arms: rectangles/cylinders
#legs: cone/triangle + cylinders
#clothes for each 
#hair

func _draw():
	draw_rect(Rect2(Vector2(100,100),Vector2(100,100)),Color(0,0,0),true)
	
#either forward, sideways or backwards
#place lines for large body pieces
func skeleton():
	pass

#add volume to body parts
func apply_body_mass():
	pass

#add volume and physics hang for clothes
func apply_clothes():
	pass