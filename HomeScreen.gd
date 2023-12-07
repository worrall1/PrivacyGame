extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CPUParticles2D.amount= Globals.bdps * 10
	$CPUParticles2D2.amount = Globals.mps
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "£" + str(Globals.money)
	
	pass


func _on_button1_pressed():
	pass # Replace with function body.


func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	pass # Replace with function body.
