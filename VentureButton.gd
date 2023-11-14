extends TextureButton

var toggle = false
var textura = load("res://Textures/selected_box.png")
var default_texture: Texture
var parent = null

# Called when the node enters the scene tree for the first time.
func _ready():
	default_texture = texture_normal
	parent = get_parent()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass




func _on_pressed():
	
		
	if toggle == false:
		if parent.selected == 0:
			
			texture_normal = textura
			parent.selected = 1
			
				
			toggle = true
			parent.selectedNode = self
		
	elif toggle == true:
		texture_normal = default_texture
		parent.selected=0
		
		
		
		toggle = false
	pass # Replace with function body.


