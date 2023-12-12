extends CanvasLayer


#var hireCost = 60 # Initial cost to hire a team member
#var charityCost = 200
var statementCost = 500
var charityRep = 5
var statementRep = 10
var eventRep = 3
#var eventCost = 150


# Called when the node enters the scene tree for the first time.
func _ready():
	check_breach_status()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PersData.text = str(Globals.redData)
	$SecLevel.text = str(Globals.securityLevel)
	var maxBreach = min(Globals.breachProb, 100)
	var splitBreach = str(maxBreach).split(".")
	var niceBreach = ""
	var dot = false
	var sigfigs = 4
	for item in splitBreach:	
		if dot == true:
			niceBreach += "."
			dot = false
		niceBreach += item.left(min(3, sigfigs))	
		sigfigs -= min(3, item.length())
		dot = true
	$BreachProb.text = niceBreach + "%"
	$StatementCost.text = str(statementCost) + "K"
	$CharityCost.text = str(Globals.charityCost) + "K"
	$EventCost.text = str(Globals.eventCost) + "K"
	$Hire.text = "HIRE: " + str(Globals.securityCost) + "K"
	$SecurityLabel.text = str(Globals.securityFreq-1)
	# Disable the hire button if not enough money
	$Hire.disabled = Globals.money < Globals.securityCost
	$StatementButton.disabled = !Globals.breachThisQuarter or Globals.money < statementCost or Globals.statementDone
	$CharityButton.disabled = Globals.money < Globals.charityCost
	$EventButton.disabled = Globals.money < Globals.eventCost
	check_breach_status()
	
	$Sprite2D.hide()
	$Sprite2D2.hide()
	$Sprite2D3.hide()
	
	if (Globals.tutorial == true):
		if Globals.tutorialProgress == 8:
			$Sprite2D.show()
		elif Globals.tutorialProgress == 9:
			$Sprite2D3.show()
		elif Globals.tutorialProgress == 10:
			$Sprite2D2.show()



func _on_hire_pressed():
	if Globals.money >= Globals.securityCost:
		Globals.securityFreq += 1
		Globals.money -= Globals.securityCost
		Globals.securityCost = int(60 * pow(1.5,(Globals.securityFreq-1)))
		$SecurityLabel.text = str(Globals.securityFreq-1)


func check_breach_status():
	if Globals.breachProb >= 30:
		$Securitybreach.visible = true
		$Nobreach.visible = false
	else:
		$Securitybreach.visible = false
		$Nobreach.visible = true


func _on_charity_button_pressed():
	if Globals.money >= Globals.charityCost:
		Globals.money -= Globals.charityCost
		Globals.reputation += charityRep
		Globals.charityCost = 200 * pow(1.5, Globals.charityPileUp)
		Globals.charityPileUp += 1


func _on_statement_button_pressed():
	if Globals.money >= Globals.statementCost && !Globals.statementDone:
		Globals.money -= statementCost
		Globals.reputation += statementRep
		Globals.statementDone = true

func _on_event_button_pressed():
	if Globals.money >= Globals.eventCost:
		Globals.money -= Globals.eventCost
		Globals.reputation += eventRep
		Globals.eventCost = 150 * pow(1.5, Globals.eventPileUp)
		Globals.eventPileUp += 1
