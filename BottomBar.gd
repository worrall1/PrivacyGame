extends NinePatchRect


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("HBoxContainer/VBoxContainer/Money").text = str(Globals.money)
	get_node("HBoxContainer/VBoxContainer/MPS").text = str(Globals.mps) + "/s"
	get_node("HBoxContainer/VBoxContainer2/BlueData").text = str(Globals.blueData)
	get_node("HBoxContainer/VBoxContainer2/BDPS").text = str(Globals.bdps) + "/s"
	get_node("HBoxContainer/VBoxContainer3/RedData").text = str(Globals.redData)
	get_node("HBoxContainer/VBoxContainer3/RDPS").text = str(Globals.rdps) + "/s"
	get_node("ProgressBar").set_value(Globals.reputation)
	pass


func _on_texture_button_pressed():
	Globals.timeModifier = 0
	pass # Replace with function body.


func _on_texture_button_2_pressed():
	Globals.timeModifier = 2
	pass # Replace with function body.


func _on_texture_button_3_pressed():
	Globals.timeModifier = 1
	pass # Replace with function body.
