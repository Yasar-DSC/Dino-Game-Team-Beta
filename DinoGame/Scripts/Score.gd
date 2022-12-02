extends Label



var score = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "SCORE: " + str(score)
	
func _physics_process(delta):
	if(GlobalScript.engine_speed !=0):
		score += 0.3 * GlobalScript.score_mult
		self.text = "SCORE: " + str(int(score))
	if(int(score) % 200 == 0 && int(score)>=200):
		GlobalScript.engine_speed += 0.2
		GlobalScript.score_mult += 0.01

