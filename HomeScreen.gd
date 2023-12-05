extends Node2D

var redData1Height = 0
var redData2Height = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$RedData.position.y = 0
	$RedData2.position.y = $RedData.texture.get_height()
	redData1Height = $RedData.texture.get_height()
	redData2Height = $RedData2.texture.get_height()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Move both sprites up
	$RedData.position.y -= 50 
	$RedData2.position.y -= 50

	# Check if SpriteA is completely out of view, if so, move it above SpriteB
	if $RedData.position.y < -redData1Height:
		$RedData.position.y = $RedData2.position.y + redData2Height

	# Check if SpriteB is completely out of view, if so, move it above SpriteA
	if $RedData2.position.y < -redData2Height:
		$RedData2.position.y = $RedData.position.y + redData1Height


func _on_button1_pressed():
	pass # Replace with function body.


func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	pass # Replace with function body.
