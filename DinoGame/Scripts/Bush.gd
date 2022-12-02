extends Area2D


var speed = 300 #same as ground speed


# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered",self,"detect_body")


func _physics_process(delta):
	
	position.x -= speed * delta * GlobalScript.engine_speed
	position.y = 570
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func detect_body(body):
	if body.is_in_group("player"):
		print("x")

