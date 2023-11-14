extends Node

# Variables for upgrades
var upgrade_level = 0
var upgrade_cost = 100
var upgrade_mult = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Example function to handle upgrades
func buy_upgrade():
	if Globals.money >= upgrade_cost:
		Globals.money -= upgrade_cost
		upgrade_level += 1
		upgrade_mult = upgrade_level / 2
		upgrade_cost += 50 * upgrade_mult # Increase cost for next upgrade
		
		# Modify other global variables based on upgrade (example)
		Globals.mps += 1 # Increase money per second as an example effect of the upgrade
		# Add other effects of the upgrade here
		
		print("Upgrade successful! New level: " + str(upgrade_level))
	else:
		print("Not enough money for upgrade!")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
