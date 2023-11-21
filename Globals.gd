extends Node

var money = 500
var mps = 0
var moneyTotal = 0
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
var securityFreq = 0
var breachProb = 0.1
var breachTemp = 0 #used when updating breach chance
var breachThisQuarter = false
var securityLevel = "Good"
var quarter = 0 #how long the game has been going
var time = 0 #how long since the start of this quarter
var moneyLastQuarter = 0
var blueDataLastQuarter = 0
var repLastQuarter = 0
var timeModifier = 0
var reputationModifier = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(timeModifier > 0):
		money += mps * reputationModifier * timeModifier
		moneyTotal += mps * reputationModifier * timeModifier
		blueData += bdps * reputationModifier * timeModifier
		blueDataTotal += bdps * reputationModifier * timeModifier
		redData += rdps * reputationModifier * timeModifier
		redDataTotal += rdps * reputationModifier * timeModifier
		time += 1
		breachTemp = redDataTotal
		for i in range(securityFreq):
			breachTemp = breachTemp / 2
		breachProb = breachTemp
		if (breachProb < 0.04):
			securityLevel = "Good"
		elif ((breachProb >= 0.04) && (breachProb < 0.2)):
			securityLevel = "Threatened"
		elif ((breachProb >= 0.2) && (breachProb < 0.5)):
			securityLevel = "Poor"
		else:
			securityLevel = "Critical"
	if(time > 2000):
		quarter += 1
		time = 0
		
		get_tree().change_scene_to_file("res://YearlyReport.tscn")
	pass
