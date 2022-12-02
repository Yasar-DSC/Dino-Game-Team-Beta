extends Button





func _ready():
	pass # Replace with function body.



func _physics_process(delta):
	if(GlobalScript.engine_speed == 0):
		show()
	else:
		hide()


func _on_Button_pressed():
	GlobalScript.engine_speed = 1
	get_tree().reload_current_scene()


