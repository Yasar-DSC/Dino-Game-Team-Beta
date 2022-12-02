extends Area2D


var speed = 2 #same as ground speed


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	
	position.x -= speed
	position.y = 570
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
