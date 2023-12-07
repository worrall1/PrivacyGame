extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("NinePatchRect").set_values(DataOfferRepo.title1, DataOfferRepo.blueData1, DataOfferRepo.redData1, DataOfferRepo.money1, DataOfferRepo.rep1, DataOfferRepo.label1, DataOfferRepo.taken1, 1)
	get_node("NinePatchRect2").set_values(DataOfferRepo.title2, DataOfferRepo.blueData2, DataOfferRepo.redData2, DataOfferRepo.money2, DataOfferRepo.rep2, DataOfferRepo.label2, DataOfferRepo.taken2, 2)
	get_node("NinePatchRect3").set_values(DataOfferRepo.title3, DataOfferRepo.blueData3, DataOfferRepo.redData3, DataOfferRepo.money3, DataOfferRepo.rep3, DataOfferRepo.label3, DataOfferRepo.taken3, 3)
	get_node("NinePatchRect4").set_values(DataOfferRepo.title4, DataOfferRepo.blueData4, DataOfferRepo.redData4, DataOfferRepo.money4, DataOfferRepo.rep4, DataOfferRepo.label4, DataOfferRepo.taken4, 4)
	get_node("NinePatchRect5").set_values(DataOfferRepo.title5, DataOfferRepo.blueData5, DataOfferRepo.redData5, DataOfferRepo.money5, DataOfferRepo.rep5, DataOfferRepo.label5, DataOfferRepo.taken5, 5)
	get_node("NinePatchRect6").set_values(DataOfferRepo.title6, DataOfferRepo.blueData6, DataOfferRepo.redData6, DataOfferRepo.money6, DataOfferRepo.rep6, DataOfferRepo.label6, DataOfferRepo.taken6, 6)
	get_node("NinePatchRect7").set_values(DataOfferRepo.title7, DataOfferRepo.blueData7, DataOfferRepo.redData7, DataOfferRepo.money7, DataOfferRepo.rep7, DataOfferRepo.label7, DataOfferRepo.taken7, 7)
	get_node("NinePatchRect8").set_values(DataOfferRepo.title8, DataOfferRepo.blueData8, DataOfferRepo.redData8, DataOfferRepo.money8, DataOfferRepo.rep8, DataOfferRepo.label8, DataOfferRepo.taken8, 8)
	get_node("NinePatchRect9").set_values(DataOfferRepo.title9, DataOfferRepo.blueData9, DataOfferRepo.redData9, DataOfferRepo.money9, DataOfferRepo.rep9, DataOfferRepo.label9, DataOfferRepo.taken9, 9)
	get_node("NinePatchRect10").set_values(DataOfferRepo.title10, DataOfferRepo.blueData10, DataOfferRepo.redData10, DataOfferRepo.money10, DataOfferRepo.rep10, DataOfferRepo.label10, DataOfferRepo.taken10, 10)
	
	get_node("NinePatchRect").show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if DataOfferRepo.taken1 == true:
		get_node("NinePatchRect").hide()
	else:
		get_node("NinePatchRect").show()
	if DataOfferRepo.taken2 == true:
		get_node("NinePatchRect2").hide()
	else:
		get_node("NinePatchRect2").show()
	if DataOfferRepo.taken3 == true:
		get_node("NinePatchRect3").hide()
	else:
		get_node("NinePatchRect3").show()
	if DataOfferRepo.taken4 == true:
		get_node("NinePatchRect4").hide()
	else:
		get_node("NinePatchRect4").show()
	if DataOfferRepo.taken5 == true:
		get_node("NinePatchRect5").hide()
	else:
		get_node("NinePatchRect5").show()
	if DataOfferRepo.taken6 == true:
		get_node("NinePatchRect6").hide()
	else:
		get_node("NinePatchRect6").show()
	if DataOfferRepo.taken7 == true:
		get_node("NinePatchRect7").hide()
	else:
		get_node("NinePatchRect7").show()
	if DataOfferRepo.taken8 == true:
		get_node("NinePatchRect8").hide()
	else:
		get_node("NinePatchRect8").show()
	if DataOfferRepo.taken9 == true:
		get_node("NinePatchRect9").hide()
	else:
		get_node("NinePatchRect9").show()
	if DataOfferRepo.taken10 == true:
		get_node("NinePatchRect10").hide()
	else:
		get_node("NinePatchRect10").show()
	pass
