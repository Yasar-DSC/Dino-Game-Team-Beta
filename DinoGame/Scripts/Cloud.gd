extends Sprite


var speed : float

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	
	position.x -= speed * GlobalScript.engine_speed


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
