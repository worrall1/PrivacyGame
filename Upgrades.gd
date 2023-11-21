extends Node2D

var selected = 0
var currentSelection = null




# Called when the node enters the scene tree for the first time.
func _ready():
	selected = 0
	get_node("Button").hide()
	get_node("Button2").hide()
	get_node("Button3").hide()
	get_node("Button4").hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	if selected ==1:
		get_node("Label").hide()
		get_node("Button").show()
		get_node("Button2").show()
		get_node("Button3").show()
		get_node("Button4").show()
		
	elif selected == 0:
		
		get_node("Label").show()
		get_node("Button").hide()
		get_node("Button2").hide()
		get_node("Button3").hide()
		get_node("Button4").hide()
		

	
	
		
	pass


func _on_texture_button_pressed():
	
	$Button/Label.hide()
	
	
	get_node("Label").hide()
	get_node("Button").show()
	get_node("Button2").show()
	get_node("Button3").show()
	get_node("Button4").show()

	if Globals.upgradeArray[0]==true:
		
		$Button/Label.show()
	
	
	
	
	
	
	
	
	
	pass # Replace with function body.


func _on_button_pressed():
	
	Globals.upgradeArray[0]=true
	$Button/Label.show()
		
		
	pass # Replace with function body.
