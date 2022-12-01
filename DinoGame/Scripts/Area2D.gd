extends Area2D


var velocity = Vector2.LEFT




func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position.x += velocity.x
	pass



func _on_VisibilityNotifier2D_screen_entered(area):
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()	
