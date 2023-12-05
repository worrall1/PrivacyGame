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
	
	#Venture 1
	$TextureButton/Label.text = "SOCIAL MEDIA"
	
	$TextureButton.cost =200
	$TextureButton.ventureNum = 1
	$TextureButton.venture1Text = "Buy 2000 Followers £50"
	$TextureButton.venture1Data = 10
	$TextureButton.venture1Cost = 50
	$TextureButton.venture2Text = "Run an ad campaign £75"
	$TextureButton.venture2Cost = 75
	$TextureButton.venture3Text = "Replace me"
	$TextureButton.venture3Cost = 75
	$TextureButton.venture4Text = "Replace me"
	$TextureButton.venture4Cost = 75
	
	#Venture 2
	$TextureButton2/Label.text = "PHOTO SHARING"
	$TextureButton2.cost =250
	$TextureButton2.ventureNum = 2
	$TextureButton2.venture1Text = "Replace me"
	$TextureButton2.venture1Cost = 75
	$TextureButton2.venture2Text = "Replace me"
	$TextureButton2.venture2Cost = 75
	$TextureButton2.venture3Text = "Replace me"
	$TextureButton2.venture3Cost = 75
	$TextureButton2.venture4Text = "Replace me"
	$TextureButton2.venture4Cost = 75
	
	$TextureButton3/Label.text="E-COMMERCE SITE"
	$TextureButton3.cost = 1200
	$TextureButton3.ventureNum = 3
	$TextureButton3.venture1Text = "Replace me"
	$TextureButton3.venture1Cost = 75
	$TextureButton3.venture2Text = "Replace me"
	$TextureButton3.venture2Cost = 75
	$TextureButton3.venture3Text = "Replace me"
	$TextureButton3.venture3Cost = 75
	$TextureButton3.venture4Text = "Replace me"
	$TextureButton3.venture4Cost = 75
	
	$TextureButton4/Label.text="MEDIA SHARING"
	$TextureButton4.cost = 300
	$TextureButton4.ventureNum = 4
	$TextureButton4.venture1Text = "Replace me"
	$TextureButton4.venture1Cost = 75
	$TextureButton4.venture2Text = "Replace me"
	$TextureButton4.venture2Cost = 75
	$TextureButton4.venture3Text = "Replace me"
	$TextureButton4.venture3Cost = 75
	$TextureButton4.venture4Text = "Replace me"
	$TextureButton4.venture4Cost = 75
	
	$TextureButton5/Label.text = "ONLINE DATING"
	$TextureButton5.cost = 700
	$TextureButton5.ventureNum = 5
	$TextureButton5.venture1Text = "Replace me"
	$TextureButton5.venture1Cost = 75
	$TextureButton5.venture2Text = "Replace me"
	$TextureButton5.venture2Cost = 75
	$TextureButton5.venture3Text = "Replace me"
	$TextureButton5.venture3Cost = 75
	$TextureButton5.venture4Text = "Replace me"
	$TextureButton5.venture4Cost = 75

	$TextureButton6/Label.text = "COMPARISON SHOPPING"
	$TextureButton6.cost = 650
	$TextureButton6.ventureNum = 6
	$TextureButton6.venture1Text = "Replace me"
	$TextureButton6.venture1Cost = 75
	$TextureButton6.venture2Text = "Replace me"
	$TextureButton6.venture2Cost = 75
	$TextureButton6.venture3Text = "Replace me"
	$TextureButton6.venture3Cost = 75
	$TextureButton6.venture4Text = "Replace me"
	$TextureButton6.venture4Cost = 75

	$TextureButton7/Label.text = "MAPS SERVICE"
	$TextureButton7.cost = 2500
	$TextureButton7.ventureNum = 7
	$TextureButton7.venture1Text = "Replace me"
	$TextureButton7.venture1Cost = 75
	$TextureButton7.venture2Text = "Replace me"
	$TextureButton7.venture2Cost = 75
	$TextureButton7.venture3Text = "Replace me"
	$TextureButton7.venture3Cost = 75
	$TextureButton7.venture4Text = "Replace me"
	$TextureButton7.venture4Cost = 75
	
	$TextureButton8/Label.text = "CASINO SITE"
	$TextureButton8.ventureNum = 8
	$TextureButton8.cost = 2000
	$TextureButton8.venture1Text = "Replace me"
	$TextureButton8.venture1Cost = 75
	$TextureButton8.venture2Text = "Replace me"
	$TextureButton8.venture2Cost = 75
	$TextureButton8.venture3Text = "Replace me"
	$TextureButton8.venture3Cost = 75
	$TextureButton8.venture4Text = "Replace me"
	$TextureButton8.venture4Cost = 75
	
	$TextureButton9/Label.text="FOOD DELIVERY SERVICE"
	$TextureButton9.cost = 1250
	$TextureButton9.ventureNum = 9
	$TextureButton9.venture1Text = "Replace me"
	$TextureButton9.venture1Cost = 75
	$TextureButton9.venture2Text = "Replace me"
	$TextureButton9.venture2Cost = 75
	$TextureButton9.venture3Text = "Replace me"
	$TextureButton9.venture3Cost = 75
	$TextureButton9.venture4Text = "Replace me"
	$TextureButton9.venture4Cost = 75

	get_node("Button").hide()
	get_node("Button2").hide()
	get_node("Button3").hide()
	get_node("Button4").hide()
	
	$Panel2.hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass # Replace with function body.







