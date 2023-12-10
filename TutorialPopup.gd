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
			$Panel/Label.text = "In the bottom left or on the top right,
			you can see your money and the money
			you make each day, shown in yellow"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 2:
			show()
			$Panel/Label.text = "You can also see how much data you have
			collected and are collecting each day. Blue
			(left) represents analytics data - things
			like user trends. Red (right) represents
			personal data like names and  passwords.
			These data  types will be used to generate 
			profits in the future but are currently
			useless"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 3:
			show()
			$Panel/Label.text = "Click on the \"Ventures\" button to
			purchase your first Venture. Ventures
			are projects and companies that can
			produce profit and data"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 4:
			show()
			$Panel/Label.text = "Looks like you can only afford a
			Social Media website. Purchase it now
			to start making money (and data)"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 5:
			show()
			$Panel/Label.text = "You can also buy upgrades to
			increase profit and data generation.
			Try it now by clicking on Social
			Media."
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 6:
			show()
			$Panel/Label.text = "That concludes the first
			tutorial, we'll catch up with you next quarter"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 7:
			show()
			$Panel/Label.text = "You now have access to the \"Operations\"
			screen, where you can manage your data and
			reputation. Click on \"Operations\" to go
			there now"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 8:
			show()
			$Panel/Label.text = "The more personal data you've collected,
			the more likely you are to have a data
			breach as hackers are after all that data.
			You need to hire a security team to
			mitigate that risk"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 9:
			show()
			$Panel/Label.text = "If you have a data breach, it will be
			catastrophic for your reputation and you
			will lose the ability to utilise any
			personal data you had collected"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 10:
			show()
			$Panel/Label.text = "You will make less money each day
			if your reputation drops. Each quarter
			you can hire a PR team to try to mend
			your reputation"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 11:
			show()
			$Panel/Label.text = "That's it for Operations, see you
			next quarter"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 12:
			show()
			$Panel/Label.text = "You now have access to the \"Data\"
			screen, where you can sell data for
			money, go take a look"
			$Panel/Button.hide()
		elif Globals.tutorialProgress == 13:
			show()
			$Panel/Label.text = "Companies will make offers to buy
			different kinds of data at different
			rates. Choose the best deals to make
			the most profit"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 14:
			show()
			$Panel/Label.text = "Selling people's personal data
			is huge breach of trust... but we don't
			care, it makes money!"
			$Panel/Button.show()
		elif Globals.tutorialProgress == 15:
			show()
			$Panel/Label.text = "In fact, selling the data gets
			it out of your hands; it's not your
			problem anymore. Less chance of a
			breach!"
			$Panel/Button.show()
		else:
			hide()
	else:
		hide()
	pass


func _on_button_pressed():
	if (Globals.tutorialProgress == 6) || (Globals.tutorialProgress == 11) || (Globals.tutorialProgress == 15):
		Globals.tutorial = false
	Globals.tutorialProgress += 1
	pass # Replace with function body.
