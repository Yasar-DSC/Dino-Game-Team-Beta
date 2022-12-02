extends KinematicBody2D

var velocity = Vector2(0,0)

#Buraya zıplama ekledim ama kendin yaparken değiştirebilirsin sadece denemek için yaptım
#Bir de StaticBody2D yi de silebilirsin o sadece zemin olması için var


export var JUMPSPEED = 200
export var GRAVITY = 5

func _ready():
	pass 


func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y -= JUMPSPEED * GlobalScript.engine_speed
	

	velocity.y += GRAVITY * GlobalScript.engine_speed
	velocity = move_and_slide(velocity,Vector2.UP)
	update_anim()


func update_anim():
	if is_on_floor():
		$RunAndJumpAnimation.play("Run")
	else:
		$RunAndJumpAnimation.play("Jump")
