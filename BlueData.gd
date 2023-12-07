extends Sprite2D

var original_position: Vector2
var move_speed: float = Globals.bdps * 1.5  # Adjust the speed as needed
var move_distance: float = 100  # Adjust the distance as needed

func _ready():
	original_position = position

func _process(delta):
	position.y -= move_speed * delta  # Move up
	if position.y < original_position.y - move_distance:
		position.y = original_position.y  # Reset to the original position
