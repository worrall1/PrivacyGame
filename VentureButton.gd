extends TextureButton

var parent = null
var cost = 0
var purchase =false
var thisNode = null
var Unlocked = false
var ventureNum = 0


var venture1Text = "null"
var venture1Cost = 20
var venture1Data = 0
var venture1Priv = 0
var venture1Rep = 0
var venture1Money = 0
var venture2Text = "null"
var venture2Cost = 30
var venture2Data = 0
var venture2Priv = 0
var venture2Rep = 0
var venture2Money = 0
var venture3Text = "null"
var venture3Cost = 40
var venture3Data = 0
var venture3Priv = 0
var venture3Rep = 0
var venture3Money = 0
var venture4Text = "Placeholder"
var venture4Cost = 50
var venture4Data = 0
var venture4Priv = 0
var venture4Rep = 0
var venture4Money = 0

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

		
	var venture = "venture"+str(ventureNum)
	
	if Globals.get(venture)==true:
		Unlocked=true
	

	

	
		
	
		
	pass





func _on_toggled(button_pressed):
	if button_pressed==true:
		
		if parent.selectedNode!=null&&parent.selectedNode!=thisNode:
			parent.selectedNode.button_pressed=false
			parent.selectedNode=thisNode

		parent.selectedNode=thisNode
		parent.venture1.ventureType = ventureNum
		parent.venture1.upgradeNumber = 0
		parent.venture1.dataInc = venture1Data
		parent.venture1.privInc = venture1Priv
		parent.venture1.repInc = venture1Rep
		parent.venture1.moneyInc = venture1Money
		parent.venture1.text = venture1Text
		parent.venture2.text = venture2Text
		parent.venture2.ventureType = ventureNum
		parent.venture2.upgradeNumber = 1
		parent.venture2.dataInc = venture2Data
		parent.venture2.privInc = venture2Priv
		parent.venture2.repInc = venture2Rep
		parent.venture2.moneyInc = venture2Money
		parent.venture3.text = venture3Text
		parent.venture3.ventureType = ventureNum
		parent.venture3.upgradeNumber = 2
		parent.venture3.dataInc = venture3Data
		parent.venture3.privInc = venture3Priv
		parent.venture3.repInc = venture3Rep
		parent.venture3.moneyInc = venture3Money
		parent.venture4.text = venture4Text
		parent.venture3.ventureType = ventureNum
		parent.venture3.upgradeNumber = 3
		parent.venture4.dataInc = venture4Data
		parent.venture4.privInc = venture4Priv
		parent.venture4.repInc = venture4Rep
		parent.venture4.moneyInc = venture4Money
		parent.venture4.cost = venture1Cost
		parent.venture2.cost = venture2Cost
		parent.venture3.cost = venture3Cost
		parent.venture4.cost = venture4Cost
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
		var venture = "venture"+str(ventureNum)
		Globals.get(venture)
		Globals.set(venture,true)
	
	


	
	
	
	pass # Replace with function body.
