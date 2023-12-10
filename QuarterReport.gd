extends NinePatchRect

 

var previousTimeModifier

var companyNames = ["Daternia", "Technosian", "Saphram Systems", "On the Books"]

var blueExplanations = ["We will sell them dishwashers", "We want to know if they have babies", "We need their location data", "We need gender data", "We will make data profiles for every user"]

var redExplanations = ["We will send them spam emails", "We will spam call them", "We will steal their identities", "We will scam their banks", "We're selling it on the dark web", "Don't ask questions", "Don't think about the users"]
 

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
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
	get_node("Date").text = "Year " + str(year + 1) + " Q" + str((Globals.quarter%4) + 1)
	get_node("Profit").text = str(Globals.money - Globals.moneyLastQuarter)
	get_node("Data Generation").text = str(Globals.blueData - Globals.blueDataLastQuarter)
	$"Data Generation2".text = str(Globals.redData - Globals.redDataLastQuarter)
	if (Globals.breachThisQuarter == true):
		get_node("Breach Explanation").text = "Hackers have breached your database
		and now have access to all your users' 
		data. People's identities are being 
		stolen and lives are being ruined.
		People are very upset and this 
		will affect your reputation"
		get_node("Secure_Breached").texture = load("res://Textures/icons/person-incognito.svg")
		if (Globals.reputation < 0):
			Globals.reputation = 0
		Globals.breachThisQuarter == false
	else:
		get_node("Breach Explanation").text = "All your data is secure this month.
		Well done!"
		get_node("Secure_Breached").texture = load("res://Textures/icons/data-breach.svg")
	set_new_data_offers()
	get_node("Reputation Swing").text = "Reputation Swing: " + str(Globals.reputation - Globals.reputationLastQuarter) + ("%")
	Globals.moneyLastQuarter = Globals.money
	Globals.blueDataLastQuarter = Globals.blueData
	Globals.redDataLastQuarter = Globals.redData
	Globals.reputationLastQuarter = Globals.reputation
	pass # Replace with function body.

 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

 


func _on_button_pressed():
	Globals.timeModifier = previousTimeModifier
	get_tree().change_scene_to_file("res://HomeScreen.tscn")
	pass # Replace with function body.
	
func set_new_data_offers():
	var startRed = 0
	if Globals.redDataTotal < 750:
		startRed = 11
	elif Globals.redDataTotal < 3000:
		startRed = (randi() % 5) + 4
	else:
		startRed = (randi() % 7) + 2
	
	for i in 10:
		var moneyOffered = 0
		var blueOffered = Globals.bdps * (randi() % 100 + 35)
		var redOffered = 0
		if i > startRed:
			redOffered = Globals.rdps * (randi() % 100 + 30)
		
		moneyOffered = int ( blueOffered * ((randi() % 30 + 45) / 250.0))
		var reputationSwing = int( blueOffered / Globals.bdps / 200.0)
		var newExplanation = ""
		
		if redOffered > 0:
			moneyOffered += int( redOffered * ((randi() % 300 + 265) / 250.0))
			reputationSwing += int( redOffered / Globals.rdps / 20.0)
			newExplanation = redExplanations[randi_range(0, redExplanations.size() - 1)]
		else:
			newExplanation = blueExplanations[randi_range(0, blueExplanations.size() - 1)]
 
		var newTitle = companyNames[randi_range(0, companyNames.size() - 1)]
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
