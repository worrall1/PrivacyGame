extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Globals.money < 3000):
		texture = load("res://Textures/officeLevels/crib0.png")
	elif(3000 <= Globals.money < 6000):
		texture = load("res://Textures/officeLevels/crib1.png")
	elif(6000 <= Globals.money < 12000):
		texture = load("res://Textures/officeLevels/crib2.png")
	elif(12000 <= Globals.money < 24000):
		texture = load("res://Textures/officeLevels/crib3.png")
	else:
		texture = load("res://Textures/officeLevels/crib4.png")