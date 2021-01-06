extends Node2D
#features to add
#ricasso
#fuller


var l = 100
var s = Vector2(200,200)
var expression = {
	"square" : .009,
	"linear" : .01,
	"constant" : 0,
	"interval" : .01
	
	}
#var p = arrange(l, expression, s)


#hilt: length, material
var hilt = [2.0, "wood"]

#material, shape, size
var guard = ["steel","straight", 5]
#material, shape, size
var pommel = []

#width, determines initial points for edges
#width, offset of placement
var base = [1.5, 0.0]


#each edge has a list of points in a line
#work in length/smoothness
#length: total length
#smoothness: points/length
#sharpness: 0-10 least to most sharp
var fore_edge = []
var back_edge = []
var fore_edge_points = [] 
var back_edge_points = []

#tip has a type that references a function which draws 
#the connection between fore and back edges
#narrow, broad, straight asymmetrical, flat, 
var tip = []

#material, fore and back edges, tip
var blade = []


#add points to a line using x

#
#func arrange(length, expression, start):
#	var points = []
#	var cx
#	var cy
#	points.append(start)
#	for i in range(length/expression.interval):
#		cx = start.x + expression.square*(expression.interval*i)*(expression.interval*i) + expression.linear*(expression.interval*i) + expression.constant
#		cy = start.y + expression.interval*i
#
#		points.append(Vector2(cx, cy))
#	return(points)
#
#
##place hilt
##draw guard
##draw blade
#func sword_outline():
#	print("sword")
#	#hilt
#	draw_line(Vector2(0,0), Vector2(0, 20*hilt[0]), Color(0, 0, 0), 1)
#	#guard
#	draw_line(Vector2((0-guard[2]), 20*hilt[0]), Vector2(guard[2], 20*hilt[0]), Color(0,0,0),1)
#	#blade
#	draw_line(Vector2(base[0], 20*hilt[0]), Vector2(base[0], 100), Color(255,255,255),1)
#	draw_line(Vector2(-base[0], 20*hilt[0]), Vector2(-base[0], 100), Color(255,255,255),1)
#	#draw point
#	draw_line(Vector2(base[0], 100), Vector2(0, 130), Color(255,255,255),1)
#	draw_line(Vector2(-base[0], 100), Vector2(0, 130), Color(255,255,255),1)
	
	
func _ready():
	print("ready")
#	var l = 100
#	var s = Vector2(200,200)
#	var expression = {
#	"square" : 10,
#	"linear" : 100,
#	"constant" : 10,
#	"interval" : 10
#	}
	#var p = arrange(l, expression, s)
#	save_to()

func _draw():
	print("draw")
	draw_rect(Rect2(Vector2(-400,100),Vector2(100,50)),Color(0,0,0),true)
	draw_rect(Rect2(Vector2(-300,100),Vector2(100,50)),Color(0,0,0),true)
	#draw_rect(Rect2(Vector2(-200,30),Vector2(50,200)),Color(0,0,0),true)
	#draw_rect(Rect2(Vector2(-150,100),Vector2(500,50)),Color(255,255,255),true)
#	draw_circle(Vector2(350,125), 25, Color(255,255,255))
	#draw_colored_polygon(PoolVector2Array([Vector2(350,100),Vector2(375,125),Vector2(350,150)]), Color(255,255,255))
#, PoolVector2Array(Vector2(350,100),Vector2(400,125),Vector2(350,150)), texture == null, null, false)
	print("done")
	draw_colored_polygon(PoolVector2Array([Vector2(0,50),Vector2(400,50),Vector2(450,60),Vector2(500,90),Vector2(450,100),Vector2(400,100),Vector2(0,100)]), Color(255,255,255))
	#sword_outline()
#	for i in range(1,p.size()):
#		draw_line(p[i-1], p[i], Color(255,255,255), 1)
	
#	var image = $PictureBox/View.get_viewport().get_texture().get_data()
#	image.save_png("res://result.png")
	
#func save_to():
#	var img = target_viewport.get_viewport().get_texture().get_data()
#	print("save")
#	img.flip_y()
#	return img.save_png("res://img.png")

func draw_blade():
	var blade_pool = PoolVector2Array([])
	var hilt_pool = PoolVector2Array([])
	#add points from all hilt pieces to a poolvector2array
	#two points of the hilt will be the base points which are the start and end of the blade
	
	#add points from all blade pieces to a poolvector2array
	
	
	draw_colored_polygon(hilt_pool, Color(0,0,0))
	draw_colored_polygon(blade_pool, Color(255,255,255))
