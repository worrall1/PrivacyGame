extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Globals.quarter > 0):
		show()
	else:
		hide()
	pass


func _on_pressed():
	if(Globals.tutorial == false):
		get_tree().change_scene_to_file("res://Operations.tscn")
	else:
		if(Globals.tutorialProgress == 7):
			Globals.tutorialProgress += 1
			get_tree().change_scene_to_file("res://Operations.tscn")
	pass # Replace with function body.
