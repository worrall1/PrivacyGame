extends TextureButton

var parent = null
var cost = 0
var purchase =false
var thisNode = null
# Called when the node enters the scene tree for the first time.
func _ready():
	parent = get_parent()
	thisNode = self
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.money<cost:
		self.disabled=true
		
	pass





func _on_toggled(button_pressed):
	if button_pressed==true:
		
		if parent.selectedNode!=null&&parent.selectedNode!=thisNode:
			parent.selectedNode.button_pressed=false
			parent.selectedNode=thisNode

		parent.selectedNode=thisNode
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
