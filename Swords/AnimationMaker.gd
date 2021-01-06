extends ColorRect

func _ready():
	
#	frame1.save_png("res://frame1.png")
#	frame2.save_png("res://frame2.png")
#	frame3.save_png("res://frame3.png")
	
	yield(get_tree(), "idle_frame")
	yield(get_tree(), "idle_frame")
	save_images()
	set_animation()
	pass
	
func save_images():
	var frame1 = ($Pose1/Viewport.get_texture().get_data())
	var frame2 = ($Pose2/Viewport.get_texture().get_data())
	var frame3 = ($Pose3/Viewport.get_texture().get_data())
	frame1.save_png("res://frame1.png")
	frame2.save_png("res://frame2.png")
	frame3.save_png("res://frame3.png")
	pass
	
func set_animation():
	var frames = load("res://customframes.tres")
	var f1 = load("res://frame1.png")
	var f2 = load("res://frame2.png")
	var f3 = load("res://frame3.png")
	
	frames.add_frame("default", f1 , 0)
	frames.add_frame("default", f2, 1)
	frames.add_frame("default", f3, 2)
	ResourceSaver.save("res://customframes.tres",frames, 0)
	
	$Animation.set_sprite_frames(frames)
	$Animation.play("default")