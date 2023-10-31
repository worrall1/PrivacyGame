extends NinePatchRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("HBoxContainer/VBoxContainer/Money").text = str(Globals.money)
	get_node("HBoxContainer/VBoxContainer/MPS").text = str(Globals.mps)
	get_node("HBoxContainer/VBoxContainer2/BlueData").text = str(Globals.blueData)
	get_node("HBoxContainer/VBoxContainer2/BDPS").text = str(Globals.bdps)
	get_node("HBoxContainer/VBoxContainer3/RedData").text = str(Globals.redData)
	get_node("HBoxContainer/VBoxContainer3/RDPS").text = str(Globals.rdps)
	pass
