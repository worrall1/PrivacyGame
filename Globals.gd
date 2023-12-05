extends Node

var money = 500
var mps = 1
var moneyTotal = 0
var upkeep = 0
var blueData = 0
var bdps = 1
var blueDataTotal = 0
var redData = 0
var rdps = 1
var redDataTotal = 0
var date = 0 #integer count of how many days have elapsed
var sfxVol = 0.5
var musicVol = 0.5
var reputation = 100 #integer 1 - 100 value for reputation
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

var upgradeOne = [false,false,false,false]
var upgradeTwo = [false,false,false,false]
var upgradeThree = [false,false,false,false]
var upgradeFour = [false,false,false,false]
var upgradeFive = [false,false,false,false]
var upgradeSix = [false,false,false,false]
var upgradeSeven = [false,false,false,false]
var upgradeEight = [false,false,false,false]
var upgradeNine = [false,false,false,false]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	time += delta * timeModifier

	if (time >= 1):
		time -= 1
		breachProb = (redDataTotal / max(securityFreq, 1))/100
	
		if(timeModifier > 0):
			reputationModifier = (reputation - 50) / 50
			money += mps * reputationModifier
			money -= upkeep
			moneyTotal += mps * reputationModifier
			blueData += bdps * reputationModifier
			blueDataTotal += bdps * reputationModifier
			redData += rdps 
			redDataTotal += rdps
			seconds += 1
			breachTemp = redDataTotal
			update_security_level()
		if(seconds > 20):
			quarter += 1
			seconds = 0
			var breachValue = randf()
			if (breachValue < breachProb):
				breachThisQuarter = true
				reputation -= 40
				redData = 0
			get_tree().change_scene_to_file("res://YearlyReport.tscn")
	pass
	
func update_security_level():
	if breachProb > 0.3:
		securityLevel = "inadequate"
	elif breachProb > 0.1:
		securityLevel = "poor"
	elif breachProb > 0.05:
		securityLevel = "medium"
	elif breachProb > 0.03:
		securityLevel = "good"
	else:
		securityLevel = "excellent"
	

