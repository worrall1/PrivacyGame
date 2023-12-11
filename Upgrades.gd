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
	$TextureButton.givesMoney = 1
	$TextureButton.givesData = 1
	$TextureButton.givesPriv = 0
	
	$TextureButton.cost =200
	$TextureButton.ventureNum = 1
	$TextureButton.venture1Text = "Personalised Ads\nSpy on your users so that Ads will get you more money"
	$TextureButton.venture1Cost = 50
	$TextureButton.venture1Priv = 1
	$TextureButton.venture1Money = 1
	$TextureButton.venture1Data = 2
	$TextureButton.venture1Rep = 0
	$TextureButton.venture2Text = "Addictive Design \nRedesign your site so users never want to leave"
	$TextureButton.venture2Cost = 75
	$TextureButton.venture2Priv = 1
	$TextureButton.venture2Money = 2
	$TextureButton.venture2Data = 5
	$TextureButton.venture2Rep = 0
	$TextureButton.venture3Text = "Enable Third Party Cookies\nThey track users across the web, for even more relevant ads"
	$TextureButton.venture3Cost = 250
	$TextureButton.venture3Priv = 2
	$TextureButton.venture3Money = 3
	$TextureButton.venture3Data = 6
	$TextureButton.venture3Rep = -3
	$TextureButton.venture4Text = "Make Users Agree To Data Collection\nWith a single checkbox, we can now have it all"
	$TextureButton.venture4Cost = 750
	$TextureButton.venture4Priv = 10
	$TextureButton.venture4Money = 0
	$TextureButton.venture4Data = 9
	$TextureButton.venture4Rep = -10
	
	$TextureButton.venture1Icon = preload("res://Textures/upgradeIcons/ad-label-icon.svg")
	$TextureButton.venture1price = preload("res://Textures/priceIcons/price50.png")
	$TextureButton.venture2Icon = preload("res://Textures/upgradeIcons/brush-pencil-icon.svg")
	$TextureButton.venture3Icon = preload("res://Textures/icons/cookie-bite-icon.png")
	$TextureButton.venture4Icon = preload("res://Textures/upgradeIcons/handshake-icon.svg")
	
	#Venture 2
	$TextureButton2/Label.text = "PHOTO SHARING"
	$TextureButton2.givesMoney = 1
	$TextureButton2.givesData = 3
	$TextureButton2.givesPriv = 2
	
	$TextureButton2.cost =275
	$TextureButton2.ventureNum = 2
	$TextureButton2.venture1Text = "Infinite Scroll\nThe content never ends, and users never leave"
	$TextureButton2.venture1Cost = 75
	$TextureButton2.venture1Priv = 1
	$TextureButton2.venture1Money = 2
	$TextureButton2.venture1Data = 5
	$TextureButton2.venture1Rep = 0
	$TextureButton2.venture2Text = "Is this an Ad?\nDisguise ads as content. Users won’t be able to tell"
	$TextureButton2.venture2Cost = 150
	$TextureButton2.venture2Priv = 5
	$TextureButton2.venture2Money = 2
	$TextureButton2.venture2Data = 7
	$TextureButton2.venture2Rep = -2
	$TextureButton2.venture3Text = "Pay Us To Not Track You\nGet a premium subscription for less data tracking today!"
	$TextureButton2.venture3Cost = 300
	$TextureButton2.venture3Priv = 8
	$TextureButton2.venture3Money = 4
	$TextureButton2.venture3Data = 9
	$TextureButton2.venture3Rep = -8
	$TextureButton2.venture4Text = "Force Linking to Social Media Account\nTwo websites can compile more data than one"
	$TextureButton2.venture4Cost = 800
	$TextureButton2.venture4Priv = 10
	$TextureButton2.venture4Money = 3
	$TextureButton2.venture4Data = 11
	$TextureButton2.venture4Rep = -15
	
	$TextureButton2.venture1Icon = preload("res://Textures/upgradeIcons/exit-door-icon.svg")
	$TextureButton2.venture2Icon = preload("res://Textures/upgradeIcons/hiding-apps-icon.svg")
	$TextureButton2.venture3Icon = preload("res://Textures/upgradeIcons/credit-card-swipe-icon.svg")
	$TextureButton2.venture4Icon = preload("res://Textures/upgradeIcons/external-link-icon.svg")
	
	$TextureButton3/Label.text="E-COMMERCE SITE"
	$TextureButton3.givesMoney = 9
	$TextureButton3.givesData = 2
	$TextureButton3.givesPriv = 4
	
	$TextureButton3.cost =1200
	$TextureButton3.ventureNum = 3
	$TextureButton3.venture1Text = "Confirm Shaming\nShame Users for unticking optional add-ons"
	$TextureButton3.venture1Cost = 500
	$TextureButton3.venture1Priv = 6
	$TextureButton3.venture1Money = 4
	$TextureButton3.venture1Data = 6
	$TextureButton3.venture1Rep = -3
	$TextureButton3.venture2Text = "Perpetual Discounts\nThis item is 50% off! And has been for months"
	$TextureButton3.venture2Cost = 950
	$TextureButton3.venture2Priv = 8
	$TextureButton3.venture2Money = 13
	$TextureButton3.venture2Data = 6
	$TextureButton3.venture2Rep = -5
	$TextureButton3.venture3Text = "Fake Countdown Timers\nAct fast for this life-changing discount!"
	$TextureButton3.venture3Cost = 2000
	$TextureButton3.venture3Priv = 10
	$TextureButton3.venture3Money = 18
	$TextureButton3.venture3Data = 8
	$TextureButton3.venture3Rep = -6
	$TextureButton3.venture4Text = "Hidden Charges In Checkout\nUsers won’t notice that extra £3 for ‘processing costs’"
	$TextureButton3.venture4Cost = 3000
	$TextureButton3.venture4Priv = 10
	$TextureButton3.venture4Money = 20
	$TextureButton3.venture4Data = 9
	$TextureButton3.venture4Rep = -15
	
	$TextureButton3.venture1Icon = preload("res://Textures/upgradeIcons/sad-man-icon.svg")
	$TextureButton3.venture2Icon = preload("res://Textures/upgradeIcons/sale-label-icon.svg")
	$TextureButton3.venture3Icon = preload("res://Textures/upgradeIcons/sand-clock-half-icon.svg")
	$TextureButton3.venture4Icon = preload("res://Textures/upgradeIcons/fees-receipt-icon.svg")
	
	$TextureButton4/Label.text="VIDEO SHARING"
	$TextureButton4.givesMoney = 1
	$TextureButton4.givesData = 4
	$TextureButton4.givesPriv = 2
	
	$TextureButton4.cost =300
	$TextureButton4.ventureNum = 4
	$TextureButton4.venture1Text = "Pre-Video Ad\nShow an Ad before each video"
	$TextureButton4.venture1Cost = 80
	$TextureButton4.venture1Priv = 3
	$TextureButton4.venture1Money = 5
	$TextureButton4.venture1Data = 3
	$TextureButton4.venture1Rep = -1
	$TextureButton4.venture2Text = "Mid-Roll Ads\nShow an Ad or two during the runtime of the video"
	$TextureButton4.venture2Cost = 160
	$TextureButton4.venture2Priv = 6
	$TextureButton4.venture2Money = 4
	$TextureButton4.venture2Data = 8
	$TextureButton4.venture2Rep = -4
	$TextureButton4.venture3Text = "More Ads\nWhat’s better than one Ad? Three!"
	$TextureButton4.venture3Cost = 320
	$TextureButton4.venture3Priv = 7
	$TextureButton4.venture3Money =2
	$TextureButton4.venture3Data = 9
	$TextureButton4.venture3Rep = -10
	$TextureButton4.venture4Text = "Offer Premium\nAn Ad Free Experience – Because aren’t Ads annoying?"
	$TextureButton4.venture4Cost = 850
	$TextureButton4.venture4Priv = 12
	$TextureButton4.venture4Money = 6
	$TextureButton4.venture4Data = 8
	$TextureButton4.venture4Rep = -4
	
	$TextureButton4.venture1Icon = preload("res://Textures/upgradeIcons/ad-label-icon.svg")
	$TextureButton4.venture2Icon = preload("res://Textures/upgradeIcons/online-ads-icon.svg")
	$TextureButton4.venture3Icon = preload("res://Textures/upgradeIcons/mobile-marketing-ads-icon.svg")
	$TextureButton4.venture4Icon = preload("res://Textures/upgradeIcons/crown-icon.svg")
	
	$TextureButton5/Label.text = "ONLINE DATING"
	$TextureButton5.givesMoney = 2
	$TextureButton5.givesData = 12
	$TextureButton5.givesPriv = 8
	
	$TextureButton5.cost =700
	$TextureButton5.ventureNum = 5
	$TextureButton5.venture1Text = "Notifications That Look Like Matches\nThis could be a real match if they used our app more"
	$TextureButton5.venture1Cost = 180
	$TextureButton5.venture1Priv = 5
	$TextureButton5.venture1Money = 3
	$TextureButton5.venture1Data = 5
	$TextureButton5.venture1Rep = -3
	$TextureButton5.venture2Text = "Premium Account\nMake users pay for ‘premium’ features, that used to be free"
	$TextureButton5.venture2Cost = 500
	$TextureButton5.venture2Priv = 8
	$TextureButton5.venture2Money = 7
	$TextureButton5.venture2Data = 7
	$TextureButton5.venture2Rep = -1
	$TextureButton5.venture3Text = "Collect Interest Data\nUsers are just giving this data away for free"
	$TextureButton5.venture3Cost = 950
	$TextureButton5.venture3Priv = 14
	$TextureButton5.venture3Money = 3
	$TextureButton5.venture3Data = 16
	$TextureButton5.venture3Rep = -10
	$TextureButton5.venture4Text = "Don’t Unsubscribe From Love\nMake it hard for users to unsubscribe from premium"
	$TextureButton5.venture4Cost = 2000
	$TextureButton5.venture4Priv = 2
	$TextureButton5.venture4Money = 12
	$TextureButton5.venture4Data = 1
	$TextureButton5.venture4Rep = -14
	
	$TextureButton5.venture1Icon = preload("res://Textures/upgradeIcons/notification-icon.svg")
	$TextureButton5.venture2Icon = preload("res://Textures/upgradeIcons/crown-icon.svg")
	$TextureButton5.venture3Icon = preload("res://Textures/upgradeIcons/marketing-funnel-icon.svg")
	$TextureButton5.venture4Icon = preload("res://Textures/upgradeIcons/stress-tired-icon.svg")

	$TextureButton6/Label.text = "COMPARISON SHOPPING"
	$TextureButton6.givesMoney = 3
	$TextureButton6.givesData = 8
	$TextureButton6.givesPriv = 4
	
	$TextureButton6.cost =650
	$TextureButton6.ventureNum = 6
	$TextureButton6.venture1Text = "Integrate Affiliate Marketing\nGet money for linking users directly to products"
	$TextureButton6.venture1Cost = 175
	$TextureButton6.venture1Priv = 3
	$TextureButton6.venture1Money = 5
	$TextureButton6.venture1Data = 6
	$TextureButton6.venture1Rep = 0
	$TextureButton6.venture2Text = "Data Analytics\nCollect valuable data on users behaviour and preferences"
	$TextureButton6.venture2Cost = 450
	$TextureButton6.venture2Priv = 3
	$TextureButton6.venture2Money = 10
	$TextureButton6.venture2Data = 3
	$TextureButton6.venture2Rep = -4
	$TextureButton6.venture3Text = "Purposely Cause Mis-Clicks\nLoad Ads slower so that users click on them"
	$TextureButton6.venture3Cost = 900
	$TextureButton6.venture3Priv = 4
	$TextureButton6.venture3Money = 6
	$TextureButton6.venture3Data = 5
	$TextureButton6.venture3Rep = -6
	$TextureButton6.venture4Text = "Sponsored Listings\nAllow retailers to pay for the top of product searches "
	$TextureButton6.venture4Cost = 1900
	$TextureButton6.venture4Priv = 5
	$TextureButton6.venture4Money = 12
	$TextureButton6.venture4Data = 6
	$TextureButton6.venture4Rep = -18
	
	$TextureButton6.venture1Icon = preload("res://Textures/upgradeIcons/friends-icon.svg")
	$TextureButton6.venture2Icon = preload("res://Textures/upgradeIcons/database-icon.svg")
	$TextureButton6.venture3Icon = preload("res://Textures/upgradeIcons/mouse-click-icon.svg")
	$TextureButton6.venture4Icon = preload("res://Textures/upgradeIcons/guarantee-award-icon.svg")

	$TextureButton7/Label.text = "MAPS SERVICE"
	$TextureButton7.givesMoney = 10
	$TextureButton7.givesData = 8
	$TextureButton7.givesPriv = 10
	
	$TextureButton7.cost =2500
	$TextureButton7.ventureNum = 7
	$TextureButton7.venture1Text = "Show Ads on The Map\nShow Ads for the area a user is viewing"
	$TextureButton7.venture1Cost = 1050
	$TextureButton7.venture1Priv = 6
	$TextureButton7.venture1Money = 18
	$TextureButton7.venture1Data = 6
	$TextureButton7.venture1Rep = -5
	$TextureButton7.venture2Text = "More Ads! Isn’t this Nice?\nShow even more Ads for the place the user is viewing"
	$TextureButton7.venture2Cost = 1950
	$TextureButton7.venture2Priv = 9
	$TextureButton7.venture2Money = 20
	$TextureButton7.venture2Data = 9
	$TextureButton7.venture2Rep = -8
	$TextureButton7.venture3Text = "Every Step You Take\nTrack users location, constantly. With permission."
	$TextureButton7.venture3Cost = 2750
	$TextureButton7.venture3Priv = 15
	$TextureButton7.venture3Money = 6
	$TextureButton7.venture3Data = 13
	$TextureButton7.venture3Rep = -20
	$TextureButton7.venture4Text = "Click Here to Delete Your Data\nBut what if we don’t actually delete it?"
	$TextureButton7.venture4Cost = 10000
	$TextureButton7.venture4Priv = 30
	$TextureButton7.venture4Money = 8
	$TextureButton7.venture4Data = 24
	$TextureButton7.venture4Rep = -30
	
	$TextureButton7.venture1Icon = preload("res://Textures/upgradeIcons/ad-label-icon.svg")
	$TextureButton7.venture2Icon = preload("res://Textures/upgradeIcons/mobile-marketing-ads-icon.svg")
	$TextureButton7.venture3Icon = preload("res://Textures/upgradeIcons/find-location-icon.svg")
	$TextureButton7.venture4Icon = preload("res://Textures/upgradeIcons/male-remove-icon.svg")
	
	$TextureButton8/Label.text = "CASINO SITE"
	$TextureButton8.givesMoney = 16
	$TextureButton8.givesData = 6
	$TextureButton8.givesPriv = 8
	
	$TextureButton8.ventureNum = 8
	$TextureButton8.cost =2000
	$TextureButton8.venture1Text = "New Jackpot Available Now!\nSend announcement Emails for new Jackpots to bring back users"
	$TextureButton8.venture1Cost = 1000
	$TextureButton8.venture1Priv = 9
	$TextureButton8.venture1Money = 14
	$TextureButton8.venture1Data = 7
	$TextureButton8.venture1Rep = -7
	$TextureButton8.venture2Text = "Don’t You Want Our Emails?\nTrick users into signing up for receiving Emails"
	$TextureButton8.venture2Cost = 1850
	$TextureButton8.venture2Priv = 11
	$TextureButton8.venture2Money = 18
	$TextureButton8.venture2Data = 8
	$TextureButton8.venture2Rep = -10
	$TextureButton8.venture3Text = "Rig The Bets, Skew The Odds\nLimit stakes for professional betters, and encourage high rollers"
	$TextureButton8.venture3Cost = 2500
	$TextureButton8.venture3Priv = 8
	$TextureButton8.venture3Money = 20
	$TextureButton8.venture3Data = 5
	$TextureButton8.venture3Rep = -15
	$TextureButton8.venture4Text = "We Heard You Like Gambling\nAdvertise to non-users whose online data implies a gambling habit"
	$TextureButton8.venture4Cost = 5000
	$TextureButton8.venture4Priv = 30
	$TextureButton8.venture4Money = 8
	$TextureButton8.venture4Data = 24
	$TextureButton8.venture4Rep = -30
	
	$TextureButton8.venture1Icon = preload("res://Textures/upgradeIcons/email-envelop-open-icon.svg")
	$TextureButton8.venture2Icon = preload("res://Textures/upgradeIcons/email-envelop-open-icon.svg")
	$TextureButton8.venture3Icon = preload("res://Textures/upgradeIcons/casino-icon.svg")
	$TextureButton8.venture4Icon = preload("res://Textures/upgradeIcons/email-envelop-open-icon.svg")
	
	$TextureButton9/Label.text="FOOD DELIVERY SERVICE"
	$TextureButton9.givesMoney = 11
	$TextureButton9.givesData = 3
	$TextureButton9.givesPriv = 4
	
	$TextureButton9.cost = 1250
	$TextureButton9.ventureNum = 9
	$TextureButton9.venture1Text = "App Won’t Work Without Notifications\nSo we can tell Users when their food arrives!"
	$TextureButton9.venture1Cost = 550
	$TextureButton9.venture1Priv = 2
	$TextureButton9.venture1Money = 1
	$TextureButton9.venture1Data = 2
	$TextureButton9.venture1Rep = 0
	$TextureButton9.venture2Text = "Targeted Notifications\nBecause we know this user loves pizza on Fridays"
	$TextureButton9.venture2Cost = 1000
	$TextureButton9.venture2Priv = 4
	$TextureButton9.venture2Money = 2
	$TextureButton9.venture2Data = 5
	$TextureButton9.venture2Rep = 0
	$TextureButton9.venture3Text = "Don’t tip? Warn That Food May Get Cold\nWithout a tip the drivers won’t want their order!"
	$TextureButton9.venture3Cost = 2100
	$TextureButton9.venture3Priv = 4
	$TextureButton9.venture3Money = 3
	$TextureButton9.venture3Data = 6
	$TextureButton9.venture3Rep = 3
	$TextureButton9.venture4Text = "Take a Bigger Cut of the Profits\nA Company like ours needs that money"
	$TextureButton9.venture4Cost = 3500
	$TextureButton9.venture4Priv = 8
	$TextureButton9.venture4Money = 0
	$TextureButton9.venture4Data = 9
	$TextureButton9.venture4Rep = -10
	
	$TextureButton9.venture1Icon = preload("res://Textures/upgradeIcons/notification-icon.svg")
	$TextureButton9.venture2Icon = preload("res://Textures/upgradeIcons/notification-icon.svg")
	$TextureButton9.venture3Icon = preload("res://Textures/upgradeIcons/hand-money-pound-coin-icon.svg")
	$TextureButton9.venture4Icon = preload("res://Textures/upgradeIcons/credit-card-swipe-icon.svg")
	
	
	
	$TextureButton.venture1price = preload("res://Textures/priceIcons/price50.png")
	$TextureButton.venture2price = preload("res://Textures/priceIcons/price75.png")
	$TextureButton.venture3price = preload("res://Textures/priceIcons/price250.png")
	$TextureButton.venture4price = preload("res://Textures/priceIcons/price750.png")


	$TextureButton2.venture1price = preload("res://Textures/priceIcons/price75.png")
	$TextureButton2.venture2price = preload("res://Textures/priceIcons/price150.png")
	$TextureButton2.venture3price = preload("res://Textures/priceIcons/price300.png")
	$TextureButton2.venture4price = preload("res://Textures/priceIcons/price800.png")

	$TextureButton3.venture1price = preload("res://Textures/priceIcons/price500.png")
	$TextureButton3.venture2price = preload("res://Textures/priceIcons/price950.png")
	$TextureButton3.venture3price = preload("res://Textures/priceIcons/price2000.png")
	$TextureButton3.venture4price = preload("res://Textures/priceIcons/price3000.png")

	$TextureButton4.venture1price = preload("res://Textures/priceIcons/price80.png")
	$TextureButton4.venture2price = preload("res://Textures/priceIcons/price160.png")
	$TextureButton4.venture3price = preload("res://Textures/priceIcons/price320.png")
	$TextureButton4.venture4price = preload("res://Textures/priceIcons/price850.png")

	$TextureButton5.venture1price = preload("res://Textures/priceIcons/price180.png")
	$TextureButton5.venture2price = preload("res://Textures/priceIcons/price500.png")
	$TextureButton5.venture3price = preload("res://Textures/priceIcons/price950.png")
	$TextureButton5.venture4price = preload("res://Textures/priceIcons/price2000.png")

	$TextureButton6.venture1price = preload("res://Textures/priceIcons/price175.png")
	$TextureButton6.venture2price = preload("res://Textures/priceIcons/price450.png")
	$TextureButton6.venture3price = preload("res://Textures/priceIcons/price900.png")
	$TextureButton6.venture4price = preload("res://Textures/priceIcons/price1900.png")

	$TextureButton7.venture1price = preload("res://Textures/priceIcons/price1050.png")
	$TextureButton7.venture2price = preload("res://Textures/priceIcons/price1950.png")
	$TextureButton7.venture3price = preload("res://Textures/priceIcons/price2750.png")
	$TextureButton7.venture4price = preload("res://Textures/priceIcons/price10000.png")

	$TextureButton8.venture1price = preload("res://Textures/priceIcons/price1000.png")
	$TextureButton8.venture2price = preload("res://Textures/priceIcons/price1850.png")
	$TextureButton8.venture3price = preload("res://Textures/priceIcons/price2500.png")
	$TextureButton8.venture4price = preload("res://Textures/priceIcons/price5000.png")

	$TextureButton9.venture1price = preload("res://Textures/priceIcons/price550.png")
	$TextureButton9.venture2price = preload("res://Textures/priceIcons/price1000.png")
	$TextureButton9.venture3price = preload("res://Textures/priceIcons/price2100.png")
	$TextureButton9.venture4price = preload("res://Textures/priceIcons/price3500.png")

	get_node("Button").hide()
	get_node("Button2").hide()
	get_node("Button3").hide()
	get_node("Button4").hide()
	
	$Panel2.hide()
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite2D.hide()
	$Sprite2D2.hide()
	if (Globals.tutorial == true):
	
		if Globals.tutorialProgress == 4:
			$Sprite2D.show()
		elif Globals.tutorialProgress == 5:
			$Sprite2D2.show()

	pass # Replace with function body.







