extends KinematicBody2D

var velocity = Vector2(0,0)

#Buraya zıplama ekledim ama kendin yaparken değiştirebilirsin sadece denemek için yaptım
#Bir de StaticBody2D yi de silebilirsin o sadece zemin olması için var


const JUMPSPEED = 200
const GRAVITY = 5

func _ready():
	pass 


func _physics_process(delta):
	if Input.is_action_just_pressed("jump"):
		velocity.y -= JUMPSPEED
	print(velocity.y)

	velocity.y += GRAVITY
	velocity = move_and_slide(velocity)
