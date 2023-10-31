extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PersData.text = str(Globals.redData)
	$SecLevel.text = str(Globals.securityLevel)
	$BreachProb.text = str(Globals.breachProb)
	
	pass


func _on_hire_pressed():
	Globals.securityFreq += 1
	Globals.money -= 100
	$SecurityLabel.text = str(Globals.securityFreq)
	
	pass # Replace with function body.
