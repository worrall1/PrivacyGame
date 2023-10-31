extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	add_theme_constant_override("separation", 50)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_Resume_pressed():
	get_tree().change_scene_to_file("res://HomeScreen.tscn")
	pass # Replace with function body.


func _on_sfx_value_changed(value):
	Globals.sfxVol = value / 100.0
	pass # Replace with function body.


func _on_music_value_changed(value):
	Globals.musicVol = value / 100.0
	pass # Replace with function body.
