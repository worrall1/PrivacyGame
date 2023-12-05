extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Globals.tutorial == true):
		if Globals.tutorialProgress == 0:
			show()
			$Panel/Label.text = "Welcome to Info Empire. In this game
			you will become one of the most powerful
			tech companies of all time but, for now,
			you are one humble person"
		elif Globals.tutorialProgress == 1:
			show()
			$Panel/Label.text = "Click on the \"Ventures\" button to
			purchase your first Venture. Ventures
			are projects and companies that can
			produce profit and data"
			$Panel/Button.hide()
		else:
			hide()
	else:
		hide()
	pass


func _on_button_pressed():
	if Globals.tutorialProgress == 0:
		Globals.tutorialProgress += 1
	
	pass # Replace with function body.
