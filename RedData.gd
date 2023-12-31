extends Sprite2D

var original_position: Vector2
var move_speed: float = Globals.rdps * 1.5  # Adjust the speed as needed
var move_distance: float = 100  # Adjust the distance as needed

func _ready():
	original_position = position
	visible = false

func _process(delta):
	if Globals.rdps > 15:
		visible = true
		position.y -= move_speed * delta  # Move up
		if position.y < original_position.y - move_distance:
			position.y = original_position.y  # Reset to the original position
