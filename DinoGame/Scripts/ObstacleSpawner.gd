extends Node2D



export (PackedScene) var Cactus
export (PackedScene) var CactusMid
export (PackedScene) var CactusBig



func _ready():
	randomize()
	

func _on_ObstacleTimer_timeout():
	
	var cactus_list = [Cactus,CactusMid,CactusBig]
	var chosen_cactus = cactus_list[randi() % cactus_list.size()]

	var cactus_instance = chosen_cactus.instance()
	var cactus_pos_x = 1200
	var cactus_pos_y = 550
	cactus_instance.position.x = cactus_pos_x
	cactus_instance.position.y = cactus_pos_y
	cactus_instance.scale.x = 2
	cactus_instance.scale.y = 2
	print("spawned")
	add_child(cactus_instance)
	pass
#	add_child(cloud)
	


