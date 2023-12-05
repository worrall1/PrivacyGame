extends Node2D

var selectedNode = null
var currentSelection = null
var actingButton = null
var showPanel = null

var venture1 = null
var venture2 = null
var venture3 = null
var venture4 = null



var seen1=0
var seen2=0
var seen3=0
var seen4=0
var seen5=0
var seen6=0
var seen7=0
var seen8=0
var seen9=0




# Called when the node enters the scene tree for the first time.
func _ready():
	showPanel = $Label
	venture1 = $Button
	venture2 = $Button2
	venture3 = $Button3
	venture4 = $Button4
	$TextureButton/Label.text = "SOCIAL MEDIA"
	$TextureButton2.cost = 5000
	$TextureButton2/Label.text = "PHOTO SHARING"
	$TextureButton3/Label.text="E-COMMERCE SITE"
	$TextureButton4/Label.text="MEDIA SHARING"
	$TextureButton5/Label.text = "ONLINE DATING"
	$TextureButton6/Label.text = "COMPARISON SHOPPING"
	$TextureButton7/Label.text = "MAPS SERVICE"
	$TextureButton8/Label.text = "CASINO SITE"
	$TextureButton9/Label.text="FOOD DELIVERY SERVICE"

	get_node("Button").hide()
	get_node("Button2").hide()
	get_node("Button3").hide()
	get_node("Button4").hide()
	
	$TextureButton.Unlocked = true
	#set_all_images()
	$Panel2.hide()
	$TextureButton.cost =20
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	if selected ==1:
#		get_node("Label").hide()
#		get_node("Button").show()
#		get_node("Button2").show()
#		get_node("Button3").show()
#		get_node("Button4").show()
#
#	else:
#
#		get_node("Label").show()
#		get_node("Button").hide()
#		get_node("Button2").hide()
#		get_node("Button3").hide()
#		get_node("Button4").hide()
#
#
#
#
#
#	pass
#
##	VENTURE BUTTON FUNCTIONS
#
#func set_all_images():
#	$TextureButton/Label.text = "SOCIAL MEDIA"
#
#	$TextureButton2/Label.text = "PHOTO SHARING"
#
#	$TextureButton3.set_texture_normal(load("res://Textures/ventures/shop.png"))
#	$TextureButton3/Label.text="E-COMMERCE SITE"
#
#	$TextureButton4.set_texture_normal(load("res://Textures/ventures/video.png"))
#	$TextureButton4/Label.text="MEDIA SHARING"
#
#	$TextureButton5.set_texture_normal(load("res://Textures/ventures/dating.png"))
#	$TextureButton5/Label.text = "ONLINE DATING"
#
#	$TextureButton6/Label.text = "COMPARISON SHOPPING"
#
#	$TextureButton7.set_texture_normal(load("res://Textures/ventures/navigation.png"))
#	$TextureButton7/Label.text = "MAPS SERVICE"
#
#	$TextureButton8.set_texture_normal(load("res://Textures/ventures/casino.png"))
#	$TextureButton8/Label.text = "CASINO SITE"
#
#	$TextureButton9/Label.text="FOOD DELIVERY SERVICE"
#
#
#
#func _on_button1_pressed():
#
#
#
#	if actingButton==1:
#		Globals.upgradeOne[0]=true
#		$Button/Label.show()
#	elif actingButton==2:
#		Globals.upgradeTwo[0]=true
#		$Button/Label.show()
#	elif actingButton==3:
#		Globals.upgradeThree[0]=true
#		$Button/Label.show()
#	elif actingButton==4:
#		Globals.upgradeFour[0]=true
#		$Button/Label.show()
#	elif actingButton==5:
#		Globals.upgradeFive[0]=true
#		$Button/Label.show()
#	elif actingButton==6:
#		Globals.upgradeSix[0]=true
#		$Button/Label.show()
#	elif actingButton==7:
#		Globals.upgradeSeven[0]=true
#		$Button/Label.show()
#	elif actingButton==8:
#		Globals.upgradeEight[0]=true
#		$Button/Label.show()
#	elif actingButton==9:
#		Globals.upgradeNine[0]=true
#		$Button/Label.show()
#
#	pass # Replace with function body.
#
#func _on_button_2_pressed():
#
#
#
#	if actingButton==1:
#
#		Globals.upgradeOne[1]=true
#		$Button2/Label.show()
#
#	elif actingButton==2:
#		Globals.upgradeTwo[1]=true
#		$Button2/Label.show()
#	elif actingButton==3:
#		Globals.upgradeThree[1]=true
#		$Button2/Label.show()
#	elif actingButton==4:
#		Globals.upgradeFour[1]=true
#		$Button2/Label.show()
#	elif actingButton==5:
#		Globals.upgradeFive[1]=true
#		$Button2/Label.show()
#	elif actingButton==6:
#		Globals.upgradeSix[1]=true
#		$Button2/Label.show()
#	elif actingButton==7:
#		Globals.upgradeSeven[1]=true
#		$Button2/Label.show()
#	elif actingButton==8:
#		Globals.upgradeEight[1]=true
#		$Button2/Label.show()
#	elif actingButton==9:
#		Globals.upgradeNine[1]=true
#		$Button2/Label.show()
#	pass # Replace with function body.
#
#
#func _on_button_3_pressed():
#	if actingButton==1:
#
#		Globals.upgradeOne[2]=true
#		$Button3/Label.show()
#
#	elif actingButton==2:
#		Globals.upgradeTwo[2]=true
#		$Button3/Label.show()
#	elif actingButton==3:
#		Globals.upgradeThree[2]=true
#		$Button3/Label.show()
#	elif actingButton==4:
#		Globals.upgradeFour[2]=true
#		$Button3/Label.show()
#	elif actingButton==5:
#		Globals.upgradeFive[2]=true
#		$Button3/Label.show()
#	elif actingButton==6:
#		Globals.upgradeSix[2]=true
#		$Button3/Label.show()
#	elif actingButton==7:
#		Globals.upgradeSeven[2]=true
#		$Button3/Label.show()
#	elif actingButton==8:
#		Globals.upgradeEight[2]=true
#		$Button3/Label.show()
#	elif actingButton==9:
#		Globals.upgradeNine[2]=true
#		$Button3/Label.show()
#	pass # Replace with function body.
#
#func _on_button_4_pressed():
#	if actingButton==1:
#
#		Globals.upgradeOne[3]=true
#		$Button4/Label.show()
#
#	elif actingButton==2:
#		Globals.upgradeTwo[3]=true
#		$Button4/Label.show()
#	elif actingButton==3:
#		Globals.upgradeThree[3]=true
#		$Button4/Label.show()
#	elif actingButton==4:
#		Globals.upgradeFour[3]=true
#		$Button4/Label.show()
#	elif actingButton==5:
#		Globals.upgradeFive[3]=true
#		$Button4/Label.show()
#	elif actingButton==6:
#		Globals.upgradeSix[3]=true
#		$Button4/Label.show()
#	elif actingButton==7:
#		Globals.upgradeSeven[3]=true
#		$Button4/Label.show()
#	elif actingButton==8:
#		Globals.upgradeEight[3]=true
#		$Button4/Label.show()
#	elif actingButton==9:
#		Globals.upgradeNine[3]=true
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
###	TEXTURE BUTTON FUNCTIONS
#
#func _on_texture_button_pressed():
#
#
#	seen1+=1
#	$Panel2/Label.text="Social Media"
#	$Panel2/RichTextLabel.add_text("Every year millionns of social media users are at risk of privacy breaches.")
#
#	set_all_images()
#	$Button.text="Addictive Design"
#	$Button2.text="Personalised Ads"
#	$Button3.text="Dark Patterns"
#	$Button4.text="Dark Patterns"
#
#	if Globals.money<510:
#		$Button.disabled=true
#	else:
#		$Button.disabled=false
#	if Globals.money<2000:
#		$Button2.disabled=true
#	else:
#		$Button2.disabled=false
#	if Globals.money<4000:
#		$Button3.disabled=true
#	else:
#		$Button3.disabled=false
#	if Globals.money<5000:
#		$Button4.disabled=true
#	else:
#		$Button4.disabled=false
#
#
#
#
#
#
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen1<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#
#
#
#
#	actingButton=1
#
#	if Globals.upgradeOne[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeOne[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeOne[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeOne[3]==true:
#		$Button4/Label.show()
#
#
#func _on_texture_button_2_pressed():
#
#	set_all_images()
#
#	seen2+=1
#	$Panel2/Label.text=""
#
#
#
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen2<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=2
#
#
#
#	if Globals.upgradeTwo[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeTwo[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeTwo[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeTwo[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#func _on_texture_button_3_pressed():
#
#	seen3+=1
#	set_all_images()
#
#
#
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen3<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=3
#
#	if Globals.upgradeThree[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeThree[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeThree[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeThree[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#func _on_texture_button_4_pressed():
#	seen4+=1
#	set_all_images()
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#
#	if seen4<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=4
#
#	if Globals.upgradeFour[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeFour[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeFour[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeFour[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#func _on_texture_button_5_pressed():
#	set_all_images()
#	seen5+=1
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen5<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=5
#
#	if Globals.upgradeFive[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeFive[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeFive[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeFive[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#func _on_texture_button_6_pressed():
#	set_all_images()
#	seen6+=1
#
#	if seen6<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	$Panel2.show()
#	actingButton=6
#
#	if Globals.upgradeSix[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeSix[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeSix[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeSix[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#func _on_texture_button_7_pressed():
#	set_all_images()
#	seen7+=1
#
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen7<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=7
#
#	if Globals.upgradeSeven[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeSeven[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeSeven[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeSeven[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#func _on_texture_button_8_pressed():
#	set_all_images()
#	seen8+=1
#
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen8<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=8
#
#	if Globals.upgradeEight[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeEight[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeEight[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeEight[3]==true:
#		$Button4/Label.show()
#	pass # Replace with function body.
#
#
#
#
#func _on_texture_button_9_pressed():
#	set_all_images()
#	seen9+=1
#
#	$Button/Label.hide()
#	$Button2/Label.hide()
#	$Button3/Label.hide()
#	$Button4/Label.hide()
#	if seen9<2:
#		$Panel2.show()
#	else:
#		$Panel2.hide()
#	actingButton=9
#
#	if Globals.upgradeNine[0]==true:
#		$Button/Label.show()
#	if Globals.upgradeNine[1]==true:
#		$Button2/Label.show()
#	if Globals.upgradeNine[2]==true:
#		$Button3/Label.show()
#	if Globals.upgradeNine[3]==true:
#		$Button4/Label.show()
	pass # Replace with function body.







