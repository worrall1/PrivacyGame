extends Node2D



func _process(delta):
	

		

	if(3000 < Globals.moneyTotal && Globals.once == 0):
		show()
		Globals.once+=1
			
	elif(6000 < Globals.moneyTotal && Globals.once ==1):
		show()
		Globals.once+=1
	elif(12000 == Globals.moneyTotal && Globals.once ==2):
		show()
		Globals.once+=1
	elif Globals.moneyTotal>24000 && Globals.once ==3:
		Globals.once+=1
		show()
	pass


func _on_button_pressed():
	hide()
	pass # Replace with function body.
