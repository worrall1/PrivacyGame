extends CanvasLayer

var hire_cost = 100 # Initial cost to hire a team member

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PersData.text = str(Globals.redData)
	update_security_level()  # Update the security level
	$SecLevel.text = str(Globals.securityLevel)
	$BreachProb.text = str(Globals.breachProb)

	# Disable the hire button if not enough money
	$Hire.disabled = Globals.money < hire_cost

	pass

func _on_hire_pressed():
	if Globals.money >= hire_cost:
		Globals.securityFreq += 1
		Globals.money -= hire_cost
		hire_cost += 50 # Increase the cost for the next hire

		$SecurityLabel.text = str(Globals.securityFreq)
	pass

# Function to update the security level
func update_security_level():
	var ratio = Globals.redData / max(Globals.securityFreq, 1) # Avoid division by zero

	if ratio > 1.5:
		Globals.securityLevel = "inadequate"
	elif ratio > 1.0:
		Globals.securityLevel = "poor"
	elif ratio > 0.5:
		Globals.securityLevel = "medium"
	elif ratio > 0.2:
		Globals.securityLevel = "good"
	else:
		Globals.securityLevel = "excellent"
