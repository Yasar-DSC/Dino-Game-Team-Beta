extends Node2D


export (PackedScene) var clouds


func _ready():
	randomize()
	

func _on_CloudTimer_timeout():
	
	var cloud = clouds.instance()
	var cloud_pos_x = 1200
	var cloud_pos_y = randi() % 350 + 10
	var cloud_scale = rand_range(3,4)
	var cloud_flip_h = randi() % 2 == 0 ## True or False
	var cloud_speed = rand_range(1.5,2)  
	var cloud_frame = randi() % 7
	
	cloud.position.x = cloud_pos_x
	cloud.position.y = cloud_pos_y
	cloud.scale.x = cloud_scale
	cloud.scale.y = cloud_scale
	cloud.flip_h = cloud_flip_h
	cloud.speed = cloud_speed
	cloud.frame = cloud_frame
	
	add_child(cloud)
	

