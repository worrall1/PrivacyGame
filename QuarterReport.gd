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
	var year = floor(Globals.quarter/4)
	get_node("Date").text = str(year)  + str((Globals.quarter%4) + 1)
	get_node("Profit").text = str(Globals.money - Globals.moneyLastQuarter)
	get_node("Data Generation").text = str(Globals.money - Globals.moneyLastQuarter)
	if (Globals.breachThisQuarter == true):
		get_node("Breach Explanation").text = "Hackers have breached your database
		and now have access to all your user's data.
		People's identities are being stolen
		and lives are being ruined.
		People are very upset and this 
		will affect your reputation"
		get_node("Secure_Breached").texture = load("res://Textures/icons/person-incognito.svg")
		Globals.reputation -= 50
		if (Globals.reputation < 0):
			Globals.reputation = 0
	else:
		get_node("Breach Explanation").text = "All your data is secure this month.
		Well done!"
		get_node("Secure_Breached").texture = load("res://Textures/icons/data-breach.svg")
	set_new_data_offers()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Globals.timeModifier = previousTimeModifier
	get_tree().change_scene_to_file("res://HomeScreen.tscn")
	pass # Replace with function body.
	
func set_new_data_offers():
	for i in 10:
		var moneyOffered = 1+1
		var blueOffered = 1+1
		var redOffered = 1+1
		var reputationSwing = 1+1
		var newTitle = "title"
		var newExplanation = "explanataion"
		if i == 0:
			DataOfferRepo.money1 = moneyOffered
			DataOfferRepo.blueData1 = blueOffered
			DataOfferRepo.redData1 = redOffered
			DataOfferRepo.rep1 = reputationSwing
			DataOfferRepo.title1 = newTitle
			DataOfferRepo.label1 = newExplanation
			DataOfferRepo.taken1 = false
		elif i == 1:
			DataOfferRepo.money2 = moneyOffered
			DataOfferRepo.blueData2 = blueOffered
			DataOfferRepo.redData2 = redOffered
			DataOfferRepo.rep2 = reputationSwing
			DataOfferRepo.title2 = newTitle
			DataOfferRepo.label2 = newExplanation
			DataOfferRepo.taken2 = false
		elif i == 2:
			DataOfferRepo.money3 = moneyOffered
			DataOfferRepo.blueData3 = blueOffered
			DataOfferRepo.redData3 = redOffered
			DataOfferRepo.rep3 = reputationSwing
			DataOfferRepo.title3 = newTitle
			DataOfferRepo.label3 = newExplanation
			DataOfferRepo.taken3 = false
		elif i == 3:
			DataOfferRepo.money4 = moneyOffered
			DataOfferRepo.blueData4 = blueOffered
			DataOfferRepo.redData4 = redOffered
			DataOfferRepo.rep4 = reputationSwing
			DataOfferRepo.title4 = newTitle
			DataOfferRepo.label4 = newExplanation
			DataOfferRepo.taken4 = false
		elif i == 4:
			DataOfferRepo.money5 = moneyOffered
			DataOfferRepo.blueData5 = blueOffered
			DataOfferRepo.redData5 = redOffered
			DataOfferRepo.rep5 = reputationSwing
			DataOfferRepo.title5 = newTitle
			DataOfferRepo.label5 = newExplanation
			DataOfferRepo.taken5 = false
		elif i == 5:
			DataOfferRepo.money6 = moneyOffered
			DataOfferRepo.blueData6 = blueOffered
			DataOfferRepo.redData6 = redOffered
			DataOfferRepo.rep6 = reputationSwing
			DataOfferRepo.title6 = newTitle
			DataOfferRepo.label6 = newExplanation
			DataOfferRepo.taken6 = false
		elif i == 6:
			DataOfferRepo.money7 = moneyOffered
			DataOfferRepo.blueData7 = blueOffered
			DataOfferRepo.redData7 = redOffered
			DataOfferRepo.rep7 = reputationSwing
			DataOfferRepo.title7 = newTitle
			DataOfferRepo.label7 = newExplanation
			DataOfferRepo.taken7 = false
		elif i == 7:
			DataOfferRepo.money8 = moneyOffered
			DataOfferRepo.blueData8 = blueOffered
			DataOfferRepo.redData8 = redOffered
			DataOfferRepo.rep8 = reputationSwing
			DataOfferRepo.title8 = newTitle
			DataOfferRepo.label8 = newExplanation
			DataOfferRepo.taken8 = false
		elif i == 8:
			DataOfferRepo.money9 = moneyOffered
			DataOfferRepo.blueData9 = blueOffered
			DataOfferRepo.redData9 = redOffered
			DataOfferRepo.rep9 = reputationSwing
			DataOfferRepo.title9 = newTitle
			DataOfferRepo.label9 = newExplanation
			DataOfferRepo.taken9 = false
		elif i == 9:
			DataOfferRepo.money10 = moneyOffered
			DataOfferRepo.blueData10 = blueOffered
			DataOfferRepo.redData10 = redOffered
			DataOfferRepo.rep10 = reputationSwing
			DataOfferRepo.title10 = newTitle
			DataOfferRepo.label10 = newExplanation
			DataOfferRepo.taken10 = false
