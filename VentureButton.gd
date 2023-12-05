extends TextureButton

var parent = null
var cost = 0
var purchase =false
var thisNode = null
var Unlocked = false

var venture1Text = "null"
var venture1Cost = 20
var venture2Text = "null"
var venture2Cost = 30
var venture3Text = "null"
var venture3Cost = 40
var venture4Text = "Placeholder"
var venture4Cost = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()
	thisNode = self
	$Button.disabled = true

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Button.text="Purchase £"+str(cost)
	if Unlocked==false:
		self.disabled=true
	elif Unlocked == true:
		self.disabled=false
		$Button.disabled=true
		$Button.text = "Purchased"
		
	if Globals.money>=cost&&Unlocked==false:
		$Button.disabled=false
		

	
		
	
		
	pass





func _on_toggled(button_pressed):
	if button_pressed==true:
		
		if parent.selectedNode!=null&&parent.selectedNode!=thisNode:
			parent.selectedNode.button_pressed=false
			parent.selectedNode=thisNode

		parent.selectedNode=thisNode
		parent.venture1.text = venture1Text
		parent.venture2.text = venture2Text
		parent.venture3.text = venture3Text
		parent.venture4.text = venture4Text
		parent.showPanel.hide()
		parent.venture1.show()
		parent.venture2.show()
		parent.venture3.show()
		parent.venture4.show()
	else:
		parent.showPanel.show()
		parent.venture1.hide()
		parent.venture2.hide()
		parent.venture3.hide()
		parent.venture4.hide()
		
	
	pass # Replace with function body.


func _on_button_pressed():
	
	if Globals.money>=cost:
		Globals.money-=cost
		Unlocked=true

	
	
	
	pass # Replace with function body.
