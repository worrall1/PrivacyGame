extends CanvasLayer


var hireCost = 100 # Initial cost to hire a team member
var charityCost = 200
var statementCost = 50
var charityRep = 5
var statementRep = 2
var reputation_label

# Additional PR Action
var additionalPRCost = 300
var additionalPRRep = 8

# Called when the node enters the scene tree for the first time.
func _ready():
	update_pr_buttons()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PersData.text = str(Globals.redData)
	$SecLevel.text = str(Globals.securityLevel)
	$BreachProb.text = str(Globals.breachProb)
	$StatementCost.text = str(statementCost)
	$CharityCost.text = str(charityCost)
	# Disable the hire button if not enough money
	$Hire.disabled = Globals.money < hireCost
	$StatementButton.disabled = !Globals.breachThisQuarter or Globals.money < statementCost


func _on_hire_pressed():
	if Globals.money >= hireCost:
		Globals.securityFreq += 1
		Globals.money -= hireCost
		hireCost += 50 # Increase the cost for the next hire

		$SecurityLabel.text = str(Globals.securityFreq)
	pass




func update_pr_buttons():
	# Disables the PR buttons if there isn't enough money
	$CharityButton.disabled = Globals.money < charityCost
	$StatementButton.disabled = Globals.money < statementCost
	


func _on_charity_button_pressed():
	if Globals.money >= charityCost:
		Globals.money -= charityCost
		Globals.reputation += charityRep
		update_pr_buttons()
		Globals.reputation += 5

func _on_statement_button_pressed():
	if Globals.money >= statementCost:
		Globals.money -= statementCost
		Globals.reputation += statementRep
		update_pr_buttons()
		Globals.reputation += 2
		

func update_pr_section():
	pass





