extends ParallaxBackground



export var floor_speed = 200
export var mountain_speed = 100
#export var cloud_speed = 100

func _ready():
	pass # Replace with function body.



func _process(delta):
	$Floor.motion_offset += Vector2.LEFT * floor_speed * delta * GlobalScript.engine_speed
	$Mountain.motion_offset += Vector2.LEFT * mountain_speed * delta * GlobalScript.engine_speed
	#$Clouds.motion_offset += Vector2.LEFT * cloud_speed * rand_range(0.8, 2) * delta
