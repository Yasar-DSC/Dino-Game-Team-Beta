extends Node2D


export (PackedScene) var cloud_scene


func _ready():
	randomize()




func _on_CloudTimer_timeout():
	
	var cloud = cloud_scene.instance()
	
	var cloud_spawn_location = get_node("CloudPath/CloudSpawn")
	cloud_spawn_location.offset = rand_range(0,410)
	
	cloud.position = cloud_spawn_location.position
	
	print("spawned")
	
	var velocity = Vector2(0,(rand_range(80,200)))
	cloud.velocity = velocity
	
	add_child(cloud)
