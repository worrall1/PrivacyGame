extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	Globals.tutorial = true
	Globals.tutorialProgress = 0
	get_tree().change_scene_to_file("res://HomeScreen.tscn")
	pass # Replace with function body.


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Settings.tscn")
	pass # Replace with function body.
