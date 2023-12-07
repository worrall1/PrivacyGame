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
			$Panel/Button.show()
		elif Globals.tutorialProgress == 1:
			show()
			$Panel/Label.text = "Click on the \"Ventures\" button to
			purchase your first Venture. Ventures
			are projects and companies that can
			produce profit and data"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 2:
			show()
			$Panel/Label.text = "Looks like you can only afford a
			Social Media website. Purchase it now to start your
			empire"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 3:
			show()
			$Panel/Label.text = "You can also buy upgrades to
			increase profit and data generation. Try it now"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 4:
			show()
			$Panel/Label.text = "That concludes the first
			tutorial, we'll catch up with you next quarter"
			$Panel/Button.show()
		else:
			hide()
	else:
		hide()
	pass


func _on_button_pressed():
	if Globals.tutorialProgress == 0:
		Globals.tutorialProgress += 1
	if Globals.tutorialProgress == 4:
		Globals.tutorialProgress += 1
		Globals.tutorial = false
	pass # Replace with function body.
