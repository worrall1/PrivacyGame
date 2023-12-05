extends CanvasLayer


var hireCost = 100 # Initial cost to hire a team member
var charityCost = 200
var statementCost = 50
var charityRep = 5
var statementRep = 2
var eventRep = 3
var eventCost = 150

# Additional PR Action
var charityCostIncrement = 50
var statementCostIncrement = 25
var eventCostIncrement = 75

# Called when the node enters the scene tree for the first time.
func _ready():
	update_pr_buttons()
	check_breach_status()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PersData.text = str(Globals.redData)
	$SecLevel.text = str(Globals.securityLevel)
	$BreachProb.text = str(min(Globals.breachProb * 100, 100)) + "%"
	$StatementCost.text = str(statementCost)
	$CharityCost.text = str(charityCost)
	$EventCost.text = str(eventCost)
	# Disable the hire button if not enough money
	$Hire.disabled = Globals.money < hireCost
	$StatementButton.disabled = !Globals.breachThisQuarter or Globals.money < statementCost
	check_breach_status()


func _on_hire_pressed():
	if Globals.money >= hireCost:
		Globals.securityFreq += 1
		Globals.money -= hireCost
		hireCost += 50 
		$SecurityLabel.text = str(Globals.securityFreq)


func update_pr_buttons():
	# Disables the PR buttons if there isn't enough money
	$CharityButton.disabled = Globals.money < charityCost
	$StatementButton.disabled = Globals.money < statementCost
	

func check_breach_status():
	var security_breach_sprite = $Securitybreach  # Adjust the path to your Sprite node
	var no_breach_sprite = $Nobreach  # Adjust the path to your Sprite node

	if Globals.breachProb >= 0.03:
		security_breach_sprite.visible = true
		no_breach_sprite.visible = false
	else:
		security_breach_sprite.visible = false
		no_breach_sprite.visible = true

func _on_charity_button_pressed():
	if Globals.money >= charityCost:
		Globals.money -= charityCost
		Globals.reputation += charityRep
		charityCost += charityCostIncrement * 3
		update_pr_buttons()


func _on_statement_button_pressed():
	if Globals.money >= statementCost:
		Globals.money -= statementCost
		Globals.reputation += statementRep
		statementCost += statementCostIncrement * 1.5
		update_pr_buttons()

func _on_event_button_pressed():
	if Globals.money >= eventCost:
		Globals.money -= eventCost
		Globals.reputation += eventRep
		eventCost += eventCostIncrement * 2.3
		update_pr_buttons()
