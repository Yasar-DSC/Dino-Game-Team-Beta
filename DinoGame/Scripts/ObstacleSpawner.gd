extends Node2D



export (PackedScene) var Cactus
export (PackedScene) var CactusMid
export (PackedScene) var CactusBig
export (PackedScene) var Bush


func _ready():
	randomize()
	
	

func _on_ObstacleTimer_timeout():
	
	var cactus_list = [Cactus,CactusMid,CactusBig,Bush]
	var chosen_cactus = cactus_list[randi() % cactus_list.size()]

	var cactus_instance = chosen_cactus.instance()
	var cactus_pos_x = 1200
	var cactus_pos_y = 560
	cactus_instance.position.x = cactus_pos_x
	cactus_instance.position.y = cactus_pos_y
	
	print("spawned")
	add_child(cactus_instance)

	


