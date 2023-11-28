extends NinePatchRect

var previousTimeModifier

# Called when the node enters the scene tree for the first time.
func _ready():
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
	previousTimeModifier = Globals.timeModifier
	Globals.timeModifier = 0
	get_node("Profit").text = str(Globals.money - Globals.moneyLastQuarter)
	get_node("Data Generation").text = str(Globals.money - Globals.moneyLastQuarter)
	get_node("Reputation Swing").text = str(Globals.reputation - Globals.repLastQuarter)
	if (Globals.breachThisQuarter == true):
		get_node("Breach Explanation").text = "Hackers have breached your database and now have access to all your user's data. People's identities are being stolen and lives are being ruined. People are very upset and this will affect you reputation"
		get_node("Secure_Breached").texture = load("res://Textures/icons/person-incognito.svg")
		Globals.reputation -= 50
		if (Globals.reputation < 0):
			Globals.reputation = 0
	else:
		get_node("Breach Explanation").text = "All your data is secure this month. Well done!"
		get_node("Secure_Breached").texture = load("res://Textures/icons/data-breach.svg")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Globals.timeModifier = previousTimeModifier
	get_tree().change_scene_to_file("res://HomeScreen.tscn")
	pass # Replace with function body.
