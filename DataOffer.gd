extends NinePatchRect

var title
var blueData
var redData
var money
var rep
var label

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("VBoxContainer/Title").text = title
	get_node("VBoxContainer/Label").text = label
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/RedDataCost").text = redData
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/BlueDataCost").text = blueData
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/Money").text = money
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/Rep").text = rep
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_pressed():
	Globals.blueData -= blueData
	Globals.redData -= redData
	Globals.money -= money
	Globals.reputation -= rep
	pass # Replace with function body.
