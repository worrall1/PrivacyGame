extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	if(Globals.moneyTotal <3000):
		texture = load("res://Textures/officeLevels/crib0.png")
	elif(Globals.moneyTotal >= 3000 && Globals.moneyTotal<6000):

		texture = load("res://Textures/officeLevels/crib1.png")
		set_size(Vector2(1920,1080),true)
		set_position(Vector2(0,0),true)
	elif(6000 >= Globals.moneyTotal && Globals.moneyTotal<12000):

		texture = load("res://Textures/officeLevels/crib2.png")
		set_size(Vector2(1920,1080), true)
		set_position(Vector2(0,0), true)
	elif(12000 >= Globals.moneyTotal && Globals.moneyTotal<24000):

		texture = load("res://Textures/officeLevels/crib3.png")
		set_size(Vector2(1920,1080), true)
		set_position(Vector2(0,0), true)
	elif(24000>=Globals.moneyTotal):

		texture = load("res://Textures/officeLevels/crib4.png")
		set_size(Vector2(1920,1080), true)
		set_position(Vector2(0,0), true)
		
