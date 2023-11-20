extends NinePatchRect


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Profit").text = str(Globals.money - Globals.moneyLastQuarter)
	get_node("Data Generation").text = str(Globals.money - Globals.moneyLastQuarter)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func checkDataBreach():
	pass
