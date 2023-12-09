extends Node

var money = 250
var mps = 0
var moneyTotal = 0
var upkeep = 0
var blueData = 0
var bdps = 0
var blueDataTotal = 0
var redData = 0
var rdps = 0
var redDataTotal = 0
var date = 0 #integer count of how many days have elapsed
var sfxVol = 0.5
var musicVol = 0.5
var reputation = 100 #integer 1 - 100 value for reputation
var reputationLastQuarter = 100
var securityFreq = 0
var breachProb = 0
var breachTemp = 0 #used when updating breach chance
var breachThisQuarter = false
var securityLevel = "Good"
var quarter = 0 #how long the game has been going
var time = 0
var seconds = 0
var moneyLastQuarter = 0
var blueDataLastQuarter = 0
var repLastQuarter = 0
var timeModifier = 1
var reputationModifier = 1
var tutorial = false
var tutorialProgress = 0

# Stores for upgrade selection
var venture1 = false
var venture2 = false
var venture3 = false
var venture4 = false
var venture5 = false
var venture6 = false
var venture7 = false
var venture8 = false
var venture9 = false

var upgrade1 = [false,false,false,false]
var upgrade2 = [false,false,false,false]
var upgrade3 = [false,false,false,false]
var upgrade4 = [false,false,false,false]
var upgrade5 = [false,false,false,false]
var upgrade6 = [false,false,false,false]
var upgrade7 = [false,false,false,false]
var upgrade8 = [false,false,false,false]
var upgrade9 = [false,false,false,false]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if tutorial == false:
		time += delta * timeModifier
	else:
		if tutorialProgress == 4:
			if venture1 == true:
				tutorialProgress += 1
				
		if tutorialProgress == 5:
			if ((upgrade1[0] == true) || (upgrade1[1] == true) || (upgrade1[2] == true)):
				tutorialProgress += 1

	if (time >= 1):
		time -= 1
		if redData < 1000:
			breachProb = (redData * 0.03)*(redData * 0.04) / (securityFreq*securityFreq + 6.0)
		elif redData < 10000:
			breachProb = (redData * 0.04)*(redData * 0.05) / (securityFreq*securityFreq + 5.0)
		else:
			breachProb = (redData * 0.05)*(redData * 0.06) / max(securityFreq,1)
		#breachProb = (redDataTotal / max(securityFreq, 1))/100
	
		if(timeModifier > 0):
			reputationModifier = reputation / 100.0
			money += int (mps * reputationModifier)
			money -= upkeep
			moneyTotal += int (mps * reputationModifier)
			blueData += int (bdps * reputationModifier)
			blueDataTotal += int (bdps * reputationModifier)
			redData += int(rdps * reputationModifier)
			redDataTotal += int(rdps * reputationModifier)
			seconds += 1
			breachTemp = redDataTotal
			update_security_level()
		if(seconds > 60):
			quarter += 1
			seconds = 0
			var breachValue = (randf() * 100)
			if (breachValue < breachProb):
				breachThisQuarter = true
				if redDataTotal < 1000:
					reputation -= 20
				elif redDataTotal < 5000:
					reputation -= 35
				else:
					reputation -= 50
				var loss = randf_range(2,9)
				redData = int(redData / loss)
			get_tree().change_scene_to_file("res://YearlyReport.tscn")
	pass
	
func update_security_level():
	if breachProb > 50:
		securityLevel = "inadequate"
	elif breachProb > 30:
		securityLevel = "poor"
	elif breachProb > 5:
		securityLevel = "medium"
	elif breachProb > 3:
		securityLevel = "good"
	else:
		securityLevel = "excellent"
	

