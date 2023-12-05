extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.tutorialProgress == 0:
		$Panel/Label.text = "Welcome to Info Empire. In this game
		you will become one of the most powerful
		tech companies of all time but, for now,
		you are one humble person"
	if Globals.tutorialProgress == 1:
		$Panel/Label.text = "Click on the \"Ventures\" button to
		purchase your first Venture. Ventures
		are projects and companies that can
		produce profit and data"
	pass
