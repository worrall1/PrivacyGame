extends Panel


var parent = null


# Called when the node enters the scene tree for the first time.
func _ready():
	parent=get_parent()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	self.hide()
	pass # Replace with function body.


