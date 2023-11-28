extends Node2D

var selected = 0
var currentSelection = null
var actingButton = null




# Called when the node enters the scene tree for the first time.
func _ready():
	selected = 0
	get_node("Button").hide()
	get_node("Button2").hide()
	get_node("Button3").hide()
	get_node("Button4").hide()
	$TextureButton3.set_texture_normal(load("res://Textures/ventures/shop.png"))
	$TextureButton4.set_texture_normal(load("res://Textures/ventures/video.png"))
	$TextureButton5.set_texture_normal(load("res://Textures/ventures/dating.png"))
	$TextureButton7.set_texture_normal(load("res://Textures/ventures/navigation.png"))
	$TextureButton8.set_texture_normal(load("res://Textures/ventures/casino.png"))
	$Panel2.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selected ==1:
		get_node("Label").hide()
		get_node("Button").show()
		get_node("Button2").show()
		get_node("Button3").show()
		get_node("Button4").show()
		
	else:
		
		get_node("Label").show()
		get_node("Button").hide()
		get_node("Button2").hide()
		get_node("Button3").hide()
		get_node("Button4").hide()
		

	
	
		
	pass

#	VENTURE BUTTON FUNCTIONS

func set_all_images():
	$TextureButton3.set_texture_normal(load("res://Textures/ventures/shop.png"))
	$TextureButton4.set_texture_normal(load("res://Textures/ventures/video.png"))
	$TextureButton5.set_texture_normal(load("res://Textures/ventures/dating.png"))
	$TextureButton7.set_texture_normal(load("res://Textures/ventures/navigation.png"))
	$TextureButton8.set_texture_normal(load("res://Textures/ventures/casino.png"))
	

func _on_button1_pressed():
	
	set_all_images()
	
	if actingButton==1:
			
		Globals.upgradeOne[0]=true
		$Button/Label.show()
	elif actingButton==2:
		Globals.upgradeTwo[0]=true
		$Button/Label.show()
	elif actingButton==3:
		Globals.upgradeThree[0]=true
		$Button/Label.show()
	elif actingButton==4:
		Globals.upgradeFour[0]=true
		$Button/Label.show()
	elif actingButton==5:
		Globals.upgradeFive[0]=true
		$Button/Label.show()
	elif actingButton==6:
		Globals.upgradeSix[0]=true
		$Button/Label.show()
	elif actingButton==7:
		Globals.upgradeSeven[0]=true
		$Button/Label.show()
	elif actingButton==8:
		Globals.upgradeEight[0]=true
		$Button/Label.show()
	elif actingButton==9:
		Globals.upgradeNine[0]=true
		$Button/Label.show()
		
	pass # Replace with function body.
	
func _on_button_2_pressed():
	
	if actingButton==1:
		
		Globals.upgradeOne[1]=true
		$Button2/Label.show()
		
	elif actingButton==2:
		Globals.upgradeTwo[1]=true
		$Button2/Label.show()
	elif actingButton==3:
		Globals.upgradeThree[1]=true
		$Button2/Label.show()
	elif actingButton==4:
		Globals.upgradeFour[1]=true
		$Button2/Label.show()
	elif actingButton==5:
		Globals.upgradeFive[1]=true
		$Button2/Label.show()
	elif actingButton==6:
		Globals.upgradeSix[1]=true
		$Button2/Label.show()
	elif actingButton==7:
		Globals.upgradeSeven[1]=true
		$Button2/Label.show()
	elif actingButton==8:
		Globals.upgradeEight[1]=true
		$Button2/Label.show()
	elif actingButton==9:
		Globals.upgradeNine[1]=true
		$Button2/Label.show()
	pass # Replace with function body.
	
	
func _on_button_3_pressed():
	if actingButton==1:
	
		Globals.upgradeOne[2]=true
		$Button3/Label.show()
		
	elif actingButton==2:
		Globals.upgradeTwo[2]=true
		$Button3/Label.show()
	elif actingButton==3:
		Globals.upgradeThree[2]=true
		$Button3/Label.show()
	elif actingButton==4:
		Globals.upgradeFour[2]=true
		$Button3/Label.show()
	elif actingButton==5:
		Globals.upgradeFive[2]=true
		$Button3/Label.show()
	elif actingButton==6:
		Globals.upgradeSix[2]=true
		$Button3/Label.show()
	elif actingButton==7:
		Globals.upgradeSeven[2]=true
		$Button3/Label.show()
	elif actingButton==8:
		Globals.upgradeEight[2]=true
		$Button3/Label.show()
	elif actingButton==9:
		Globals.upgradeNine[2]=true
		$Button3/Label.show()
	pass # Replace with function body.
	
func _on_button_4_pressed():
	if actingButton==1:
	
		Globals.upgradeOne[3]=true
		$Button4/Label.show()
		
	elif actingButton==2:
		Globals.upgradeTwo[3]=true
		$Button4/Label.show()
	elif actingButton==3:
		Globals.upgradeThree[3]=true
		$Button4/Label.show()
	elif actingButton==4:
		Globals.upgradeFour[3]=true
		$Button4/Label.show()
	elif actingButton==5:
		Globals.upgradeFive[3]=true
		$Button4/Label.show()
	elif actingButton==6:
		Globals.upgradeSix[3]=true
		$Button4/Label.show()
	elif actingButton==7:
		Globals.upgradeSeven[3]=true
		$Button4/Label.show()
	elif actingButton==8:
		Globals.upgradeEight[3]=true
		$Button4/Label.show()
	elif actingButton==9:
		Globals.upgradeNine[3]=true
		$Button4/Label.show()
	pass # Replace with function body.


##	TEXTURE BUTTON FUNCTIONS

func _on_texture_button_pressed():
	
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()

		
	actingButton=1
	
	if Globals.upgradeOne[0]==true:
		$Button/Label.show()
	if Globals.upgradeOne[1]==true:
		$Button2/Label.show()
	if Globals.upgradeOne[2]==true:
		$Button3/Label.show()
	if Globals.upgradeOne[3]==true:
		$Button4/Label.show()
	

func _on_texture_button_2_pressed():

	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=2
	
	if Globals.upgradeTwo[0]==true:
		$Button/Label.show()
	if Globals.upgradeTwo[1]==true:
		$Button2/Label.show()
	if Globals.upgradeTwo[2]==true:
		$Button3/Label.show()
	if Globals.upgradeTwo[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.


func _on_texture_button_3_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=3
	
	if Globals.upgradeThree[0]==true:
		$Button/Label.show()
	if Globals.upgradeThree[1]==true:
		$Button2/Label.show()
	if Globals.upgradeThree[2]==true:
		$Button3/Label.show()
	if Globals.upgradeThree[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.


func _on_texture_button_4_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=4
	
	if Globals.upgradeFour[0]==true:
		$Button/Label.show()
	if Globals.upgradeFour[1]==true:
		$Button2/Label.show()
	if Globals.upgradeFour[2]==true:
		$Button3/Label.show()
	if Globals.upgradeFour[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.


func _on_texture_button_5_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=5
	
	if Globals.upgradeFive[0]==true:
		$Button/Label.show()
	if Globals.upgradeFive[1]==true:
		$Button2/Label.show()
	if Globals.upgradeFive[2]==true:
		$Button3/Label.show()
	if Globals.upgradeFive[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.


func _on_texture_button_6_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=6
	
	if Globals.upgradeSix[0]==true:
		$Button/Label.show()
	if Globals.upgradeSix[1]==true:
		$Button2/Label.show()
	if Globals.upgradeSix[2]==true:
		$Button3/Label.show()
	if Globals.upgradeSix[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.


func _on_texture_button_7_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=7
	
	if Globals.upgradeSeven[0]==true:
		$Button/Label.show()
	if Globals.upgradeSeven[1]==true:
		$Button2/Label.show()
	if Globals.upgradeSeven[2]==true:
		$Button3/Label.show()
	if Globals.upgradeSeven[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.


func _on_texture_button_8_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=8
	
	if Globals.upgradeEight[0]==true:
		$Button/Label.show()
	if Globals.upgradeEight[1]==true:
		$Button2/Label.show()
	if Globals.upgradeEight[2]==true:
		$Button3/Label.show()
	if Globals.upgradeEight[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.
	
	


func _on_texture_button_9_pressed():
	$Button/Label.hide()
	$Button2/Label.hide()
	$Button3/Label.hide()
	$Button4/Label.hide()
	$Panel2.show()
	actingButton=9
	
	if Globals.upgradeNine[0]==true:
		$Button/Label.show()
	if Globals.upgradeNine[1]==true:
		$Button2/Label.show()
	if Globals.upgradeNine[2]==true:
		$Button3/Label.show()
	if Globals.upgradeNine[3]==true:
		$Button4/Label.show()
	pass # Replace with function body.







