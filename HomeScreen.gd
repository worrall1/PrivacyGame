extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#if Globals.bdps>1:
	#	$CPUParticles2D.amount= Globals.bdps
	#elif Globals.bdps==1:
	#	$CPUParticles2D.amount = 1
	$CPUParticles2D.amount = Globals.bdps
	$CPUParticles2D2.amount = Globals.mps 
	
	if Globals.mps==0:
		$CPUParticles2D2.hide()
	else:
		$CPUParticles2D2.show()
	
	if Globals.tutorialProgress == 7:
		if Globals.quarter > 0:
			Globals.tutorial = true
	if Globals.tutorialProgress == 12:
		if Globals.quarter > 1:
			Globals.tutorial = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "£" + str(Globals.money) + "K"
	pass


func _on_button1_pressed():
	pass # Replace with function body.


func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	pass # Replace with function body.
