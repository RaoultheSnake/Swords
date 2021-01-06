extends Node2D

func _ready():
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	save_view()
	


func save_view():
	var view = $Window/Viewport.get_texture().get_data()
	view.save_png("res://view.png")
	
