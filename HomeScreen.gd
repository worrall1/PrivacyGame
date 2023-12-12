extends Node2D

var level = null


# Called when the node enters the scene tree for the first time.
func _ready():
	#if Globals.bdps>1:
	#	$CPUParticles2D.amount= Globals.bdps
	#elif Globals.bdps==1:
	#	$CPUParticles2D.amount = 1
	$Node2D.hide()
	if Globals.mps==0:
		$CPUParticles2D2.hide()
	else:
		$CPUParticles2D2.show()
		$CPUParticles2D2.amount = Globals.mps 
	$CPUParticles2D.amount = Globals.bdps
	
	
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
	$Sprite2D.hide()
	$Sprite2D2.hide()
	$Sprite2D3.hide()
	$Sprite2D4.hide()
	$Sprite2D5.hide()
	if (Globals.tutorial == true):
		if Globals.tutorialProgress == 0:
			pass
			
			
		elif Globals.tutorialProgress == 1:
			
			$Sprite2D.show()
			
		elif Globals.tutorialProgress == 2:
			$Sprite2D2.show()
		elif Globals.tutorialProgress == 3:
			$Sprite2D3.show()
		elif Globals.tutorialProgress == 7:
			$Sprite2D4.show()
		elif Globals.tutorialProgress == 12:
			$Sprite2D5.show()
		
	pass


func _on_button1_pressed():
	pass # Replace with function body.


func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	pass # Replace with function body.
