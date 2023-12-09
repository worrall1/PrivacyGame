extends Button
var upgradeNumber = 0
var ventureType = 0
var cost=0
var labelText=null
var ventureUnlocked = false
var moneyInc = 0
var dataInc = 0
var privInc = 0
var repInc = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	

	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$RichTextLabel.text = "[color=green]"+ str(moneyInc)+"£/ps[/color]  "+ "[color=blue]"+ str(dataInc)+"/ps[/color]  "+"[color=red]"+ str(privInc)+"/ps[/color]                                                                             "+"[color=black]"+ str(repInc)+" rep[/color]"
	
	var venture = "upgrade"+str(ventureType)
	var temp = Globals.get(venture)
	
	if temp!=null:
		if temp[upgradeNumber]==true:
			$Label.show()
			$RichTextLabel.hide()
			self.disabled=true
		else:
			$Label.hide()
			if cost > Globals.money:
				self.disabled = true
			else:
				self.disabled = false
			$RichTextLabel.show()

	pass





func _on_pressed():
	
	if Globals.money>=cost:
		Globals.money -= cost
		Globals.rdps+=privInc
		Globals.bdps+=dataInc
		Globals.mps+=moneyInc
		Globals.reputation+=repInc
		var venture = "upgrade"+str(ventureType)
		var tempArr = Globals.get(venture)
		tempArr[upgradeNumber] = true
		Globals.set(venture,tempArr)
		
		
		
	
	
	
	pass # Replace with function body.
