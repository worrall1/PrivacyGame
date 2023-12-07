extends NinePatchRect

var title = ""
var blueData = 0
var redData = 0
var money = 0
var rep = 0
var label = ""
var number = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("VBoxContainer/Title").text = title
	get_node("VBoxContainer/Label").text = label
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/RedDataCost").text = "Sensitive Data: " + str(redData)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/BlueDataCost").text = "Analytics Data: " + str(blueData)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer2/Money").text = "Cost" + str(money)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer2/Rep").text = "Reputation Cost" + str(rep)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_button_pressed():
	if((Globals.blueData > blueData) && (Globals.redData > redData) && (Globals.money > money) && (Globals.reputation > rep)):
		Globals.blueData -= blueData
		Globals.redData -= redData
		Globals.money -= money
		Globals.reputation -= rep
		if(number == 1):
			DataOfferRepo.taken1 = true
		elif(number == 2):
			DataOfferRepo.taken2 = true
		elif(number == 3):
			DataOfferRepo.taken3 = true
		elif(number == 4):
			DataOfferRepo.taken4 = true
		elif(number == 5):
			DataOfferRepo.taken5 = true
		elif(number == 6):
			DataOfferRepo.taken6 = true
		elif(number == 7):
			DataOfferRepo.taken7 = true
		elif(number == 8):
			DataOfferRepo.taken8 = true
		elif(number == 9):
			DataOfferRepo.taken9 = true
		elif(number == 10):
			DataOfferRepo.taken10 = true

	pass # Replace with function body.

func set_values(newTitle, newBlueData, newRedData, newMoney, newRep, newLabel, taken, newNumber):
	if (taken == true):
		visible = false
	else:
		visible = true
	number = newNumber
	title = newTitle
	blueData = newBlueData
	redData = newRedData
	money = newMoney
	rep = newRep
	label = newLabel
	get_node("VBoxContainer/Title").text = title
	get_node("VBoxContainer/Label").text = label
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/RedDataCost").text = str(redData)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer/BlueDataCost").text = str(blueData)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer2/Money").text = str(money)
	get_node("VBoxContainer/HBoxContainer/VBoxContainer2/Rep").text = str(rep)
	pass
