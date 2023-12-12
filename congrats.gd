extends Node2D



func _process(delta):
	

		

	if(3000 == Globals.moneyTotal):
		show()
			
	elif(6000 == Globals.moneyTotal):
		show()
	elif(12000 == Globals.moneyTotal):
		show()
	elif Globals.moneyTotal>24000:
		show()
	pass


func _on_button_pressed():
	hide()
	pass # Replace with function body.
