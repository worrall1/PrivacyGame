extends CanvasLayer


var hireCost = 100 # Initial cost to hire a team member
var charityCost = 200
var statementCost = 50
var charityRep = 5
var statementRep = 2
var reputation_label

# Called when the node enters the scene tree for the first time.
func _ready():
	reputation_label = get_node("/root/CanvasLayer/BottomBar/ReputationLabel")
	update_pr_buttons()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$PersData.text = str(Globals.redData)
	update_security_level()  # Update the security level
	$SecLevel.text = str(Globals.securityLevel)
	$BreachProb.text = str(Globals.breachProb)
	$StatementCost.text = str(statementCost)
	$CharityCost.text = str(charityCost)
	# Disable the hire button if not enough money
	$Hire.disabled = Globals.money < hireCost

	pass

func _on_hire_pressed():
	if Globals.money >= hireCost:
		Globals.securityFreq += 1
		Globals.money -= hireCost
		hireCost += 50 # Increase the cost for the next hire

		$SecurityLabel.text = str(Globals.securityFreq)
	pass

# Function to update the security level
func update_security_level():
	var ratio = Globals.redData / max(Globals.securityFreq, 1) # Avoid division by zero

	if ratio > 1.5:
		Globals.securityLevel = "inadequate"
	elif ratio > 1.0:
		Globals.securityLevel = "poor"
	elif ratio > 0.5:
		Globals.securityLevel = "medium"
	elif ratio > 0.2:
		Globals.securityLevel = "good"
	else:
		Globals.securityLevel = "excellent"

func update_pr_buttons():
	# Disables the PR buttons if there isn't enough money
	$CharityButton.disabled = Globals.money < charityCost
	$StatementButton.disabled = Globals.money < statementCost
	


func _on_charity_button_pressed():
	if Globals.money >= charityCost:
		Globals.money -= charityCost
		Globals.reputation += charityRep
		update_pr_buttons()
		#reputation_label.text = str(Globals.reputation)

func _on_statement_button_pressed():
	if Globals.money >= statementCost:
		Globals.money -= statementCost
		Globals.reputation += statementRep
		update_pr_buttons()
		#reputation_label.text = str(Globals.reputation)
		

func update_pr_section():
	pass





