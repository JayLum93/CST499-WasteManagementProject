local widget = require("widget")
--scrollview listener 
function scrollListener(event)
  local phase = event.phase
  local direction = event.direction

  --If the scrollView has reached it's scroll limit
  if event.limitReached then
    if "up" == direction then
      print ("Reached Top Limit")
    elseif "down" == direction then
      print ("Reached Bottom Limit")
    end
  end
  return true
end

--Recyclables
function sv2()

local scrollView = widget.newScrollView
{
  left = -160,
  top = -350,
  width = 320,
  height = 5000,
  topPadding = 540, -- 540
  bottomPadding = 3000,
  horizontalScrollDisabled = true,
  verticalScrollDisabled = false,
  listener = scrollListener
}

local exitB = widget.newButton{
    onEvent = handleExixButton,
    defaultFile = "Multiply-50.png",
    width = 30,
    height = 30
  }
  exitB.x = 15
  exitB.y = -425
scrollView:insert(exitB)
-- text in ScrollView
local metObj = display.newText("METALS\n", 0, -380, 280, 0, native.systemFont, 20)
metObj:setTextColor (.3,.5,.8)
metObj.x = display.contentCenterX
scrollView:insert(metObj)

local recText2 = "Aerosol cans (empty, non-toxic)\nAluminum foil, foil trays and pans\nAuto parts\nBeverage cans and lids\nChicken wire\nCoat hangers\nDoors and screens\nFood cans and lids\nFuel tanks (empty, valve off)\nFurniture\nKeys\nPaint cans (empty, no wet paint)\nPet food cans and lids\nPipes and plumbing fixtures\nPots and pans\nNuts and bolts\nScrap metal\nScrews and nails\nTools\nToys and sporting goods\nUmbrellas\nUtensils\n\n"
local recTextObj2 = display.newText(recText2, 0, -110, 280, 0, native.systemFont, 17)
recTextObj2:setTextColor (0)
recTextObj2.x = display.contentCenterX
scrollView:insert(recTextObj2)

-- text in ScrollView
local glassObj = display.newText("GLASS\n", 0,120, 280, 0, native.systemFont, 20)
glassObj:setTextColor (.3,.5,.8)
glassObj.x = display.contentCenterX
scrollView:insert(glassObj)

local recText3 = "Beverage bottles\nBroken glass\nDishware\nFood jars\nWindows\nWine bottles\n\n"
local recTextObj3 = display.newText(recText3, 0, 205, 280, 0, native.systemFont, 17)
recTextObj3:setTextColor (0)
recTextObj3.x = display.contentCenterX
scrollView:insert(recTextObj3)

local plasObj = display.newText("PLASTIC\n", 0,290, 280, 0, native.systemFont, 20)
plasObj:setTextColor (.3,.5,.8)
plasObj.x = display.contentCenterX
scrollView:insert(plasObj)

local recText4 = "Baby wipe containers\nBaskets\nBeverage bottles\nBread bags\nBubble wrap\nBuckets\nCandles\nCDs and DVDs\nCellophane bags\nCoat hangers\nCoffee-cup lids\nCoolers and ice chests\nCrates\nDisposable razors\nDry cleaning and newspaper bags\nFlower pots\nFood containers, bags and pouches\nFurniture\nGloves (not single-use or latex disposable)\nHoses\nHousehold cleaner botters (non-toxic)\nMouthwash containers\nPet carriers\nPipe\nPlastic shrink-wrap\nPlastic or wax liners\nPrescription bottles (must be empty)\nProduce and shopping bags\nShampoo and conditioner bottles\nShelving\nSqueezable bottles\nSwimming pools\nToys\n\n"
local recTextObj4 = display.newText(recText4, 0, 705, 280, 0, native.systemFont, 17)
recTextObj4:setTextColor (0)
recTextObj4.x = display.contentCenterX
scrollView:insert(recTextObj4)

local polObj = display.newText("POLYESTER/STYROFOAM\n", 0,1050, 280, 0, native.systemFont, 20)
polObj:setTextColor (.3,.5,.8)
polObj.x = display.contentCenterX
scrollView:insert(polObj)

local recText5 = "Packing blocks (brittle, white)\nPacking 'peanuts'\n\n"
local recTextObj5 = display.newText(recText5, 0, 1090, 280, 0, native.systemFont, 17)
recTextObj5:setTextColor (0)
recTextObj5.x = display.contentCenterX
scrollView:insert(recTextObj5)

local polObj = display.newText("SMALL ELECTRONIC WASTE\n", 0,1130, 280, 0, native.systemFont, 20)
polObj:setTextColor (.3,.5,.8)
polObj.x = display.contentCenterX
scrollView:insert(polObj)

local rectText6 = "Appliances\nCalculators\nCameras\nComputer mice\nInkjet cartridges (bagged)\nKeyboards\nPDAs\nPhones\n\n"
local recTextObj6 = display.newText(rectText6, 0, 1240, 280, 0, native.systemFont, 17)
recTextObj6:setTextColor (0)
recTextObj6.x = display.contentCenterX
scrollView:insert(recTextObj6)

local paperObj = display.newText("PAPER\n", 0,1340, 280, 0, native.systemFont, 20)
paperObj:setTextColor (.3,.5,.8)
paperObj.x = display.contentCenterX
scrollView:insert(paperObj)

local rectText7 = "Aseptic Containers\nBooks\nCardboard - waxed/unwaxed\nCoffee cups\nColored paper\nCoupons\nEgg cartons\nEnvelopes\nFood packaging\nFrozen food boxes\nGift wrap and tissue paper\nJunk mail\nMagazines and catalogs\nNewspaper\nPaper cups, plates and bags\nPhotographs\nPizza boxes\nShredded paper (tie in clear plastic bag\nTelephone books\nWhite paper\n\n"
local recTextObj7 = display.newText(rectText7, 0, 1595, 280, 0, native.systemFont, 17)
recTextObj7:setTextColor (0)
recTextObj7.x = display.contentCenterX
scrollView:insert(recTextObj7)

local fabObj = display.newText("FABRIC AND TEXTILES\n", 0,1805, 280, 0, native.systemFont, 20)
fabObj:setTextColor (.3,.5,.8)
fabObj.x = display.contentCenterX
scrollView:insert(fabObj)

local rectText8 = "All fabric types\nBoots and shoes\nCarpet and rugs\nCloth diapers\nClothing accessories\nElectric blankets\n\n"
local recTextObj8 = display.newText(rectText8, 0, 1900, 280, 0, native.systemFont, 17)
recTextObj8:setTextColor (0)
recTextObj8.x = display.contentCenterX
scrollView:insert(recTextObj8)

-----
-----
--FIX
-----
-----
local bulkObj = display.newText("BULKY\n", 0,1805, 280, 0, native.systemFont, 20)
bulkObj:setTextColor (.3,.5,.8)
bulkObj.x = display.contentCenterX
--scrollView:insert(bulkObj)
local rectText9 = "Air conditioners\nComputer monitors\nComputer towers\nMicrowaves\nPrinters and fax machines\nRefrigerators\nStereos\nTelevisions\nWasher/dryers\nWater heaters\n\n"
local recTextObj9 = display.newText(rectText8, 0, 1900, 280, 0, native.systemFont, 17)
recTextObj9:setTextColor (0)
recTextObj9.x = display.contentCenterX
--scrollView:insert(recTextObj9)

return scrollView
end

--Hazard
function sv3()

local scrollView = widget.newScrollView
{
  left = -160,
  top = -350,
  width = 320,
  height = 600,
  topPadding = 540,
  bottomPadding = 20,
  horizontalScrollDisabled = true,
  verticalScrollDisabled = false,
  listener = scrollListener
}

local exitB = widget.newButton{
    onEvent = handleExixButton,
    defaultFile = "Multiply-50.png",
    width = 30,
    height = 30
  }
  exitB.x = 15
  exitB.y = -425
scrollView:insert(exitB)
-- text in ScrollView

-- text in ScrollView
local hazObj = display.newText("HAZARDOUS WASTE\n", 0, -380, 280, 0, native.systemFont, 20)
hazObj:setTextColor (1,0,0)
hazObj.x = display.contentCenterX
scrollView:insert(hazObj)

local hazText2 = "Auto and brake fluids\nCar batteries\nCleaning fluids\nComputers\nElectronic waste (except as listed in recyclables)\nFire extinguishers\nFluorescent light bubls (e.g. CFLs, tubes)\nFuel tanks-with valve on (e.g. helium, propane)\nGrease & cooking oil\nMedications (unused/expired)\nMercury thermometers/thermostats\nMonitors\nMotor oil and oil filters\nPaints and stains (e.g. oil/solvent based)\nPesticides and fertilizers\nPool and spa chemicals\nSolvents\nSyringes/sharps\nTelevisions\nTransmission fluid\n\n"
local hazTextObj2 = display.newText(hazText2, 0, -90, 280, 0, native.systemFont, 17)
hazTextObj2:setTextColor (0)
hazTextObj2.x = display.contentCenterX
scrollView:insert(hazTextObj2)


return scrollView
end


--Food waste
function sv4()

local scrollView = widget.newScrollView
{
  left = -160,
  top = -350,
  width = 320,
  height = 1500,
  topPadding = 540,
  bottomPadding = 250,
  horizontalScrollDisabled = true,
  verticalScrollDisabled = false,
  listener = scrollListener
}

local exitB = widget.newButton{
    onEvent = handleExixButton,
    defaultFile = "Multiply-50.png",
    width = 30,
    height = 30
  }
  exitB.x = 15
  exitB.y = -425
scrollView:insert(exitB)
-- text in ScrollView

-----
-----
--FIX
-----
-----
local foodObj = display.newText("PRE/POST CONSUMER FOOD SCRAPS \n", 0, -380, 280, 0, native.systemFont, 20)
foodObj:setTextColor (0, .4, .2)
foodObj.x = display.contentCenterX
scrollView:insert(foodObj)

local foodText2 = "Bones and shells\nCoffe grounds and filters\nDairy (cheese)\nGrains (bread, rice, pasta, beans)\nFruits and vegetables\nMeat and poultry\nFish and seafood\nTable flower\n\n"
local foodTextObj2 = display.newText(foodText2, 0, -265, 280, 0, native.systemFont, 17)
foodTextObj2:setTextColor (0)
foodTextObj2.x = display.contentCenterX
scrollView:insert(foodTextObj2)

local foodObj2 = display.newText("COMPOSTABLE FOOD WARE MUST BE CERTIFIED 'COMPOSTABLE' BY ASTM AND/OR BPI\n", 0, -140, 280, 0, native.systemFont, 20)
foodObj2:setTextColor (0, .4, .2)
foodObj2.x = display.contentCenterX
scrollView:insert(foodObj2)

local foodText3 = "Compostable bowl\nCompostable cups\nCompostable cutlery\nCompostable packaging\nCompostable plastic bags\nCompostable plates\n\n"
local foodTextObj3 = display.newText(foodText3, 0, -25, 280, 0, native.systemFont, 17)
foodTextObj3:setTextColor (0)
foodTextObj3.x = display.contentCenterX
scrollView:insert(foodTextObj3)



return scrollView
end

--garbage
function sv5()

local scrollView = widget.newScrollView
{
  left = -160,
  top = -350,
  width = 320,
  height = 1500,
  topPadding = 540,
  bottomPadding = 250,
  horizontalScrollDisabled = true,
  verticalScrollDisabled = false,
  listener = scrollListener
}


local exitB = widget.newButton{
    onEvent = handleExixButton,
    defaultFile = "Multiply-50.png",
    width = 30,
    height = 30
  }
  exitB.x = 15
  exitB.y = -425
scrollView:insert(exitB)
-- text in ScrollView
local garObj = display.newText("PAPER \n", 0, -380, 280, 0, native.systemFont, 20)
garObj:setTextColor (0, 0, 0)
garObj.x = display.contentCenterX
scrollView:insert(garObj)

local garText2 = "Carbon paper\nFood-soiled cardboard\nFood-soiled paper\nNewspaper-dirty\nPaper towels and napkins\nStickers\nToilet paper and tissue\nWaxed paper\n\n"
local garTextObj2 = display.newText(garText2, 0, -270, 280, 0, native.systemFont, 17)
garTextObj2:setTextColor (0)
garTextObj2.x = display.contentCenterX
scrollView:insert(garTextObj2)

local garObj2 = display.newText("PLASTIC \n", 0, -190, 280, 0, native.systemFont, 20)
garObj2:setTextColor (0, 0, 0)
garObj2.x = display.contentCenterX
scrollView:insert(garObj2)

local garText3 = "Audio/video tapes\nChip bags\nCredit cards\nFoil beverage pouches\nRubber bands\nStraws\nTarps\nToothpaste and ointment tubes\nUtensils\nWebbing/mesh\n\n'"
local garTextObj3 = display.newText(garText3, 0, -60, 280, 0, native.systemFont, 17)
garTextObj3:setTextColor (0)
garTextObj3.x = display.contentCenterX
scrollView:insert(garTextObj3)

local garObj3 = display.newText("POLYSTERENE/STYROFOAM \n", 0, 35, 280, 0, native.systemFont, 20)
garObj3:setTextColor (0, 0, 0)
garObj3.x = display.contentCenterX
scrollView:insert(garObj3)

local garText4 = "Cups and plates\nEgg cartons\nMeat trays\nTake-out containers\n\n"
garTextObj4 = display.newText(garText4, 0, 95, 280, 0, native.systemFont, 17)
garTextObj4:setTextColor (0)
garTextObj4.x = display.contentCenterX
scrollView:insert(garTextObj4)

local garObj4 = display.newText("GLASS\n", 0, 140, 280, 0, native.systemFont, 20)
garObj4:setTextColor (0, 0, 0)
garObj4.x = display.contentCenterX
scrollView:insert(garObj4)

local garText5 = "Ceramics\nCookware\nIncandescent light bulbs\nMirrors\n\n"
local garTextObj5 = display.newText(garText5, 0, 200, 280, 0, native.systemFont, 17)
garTextObj5:setTextColor (0)
garTextObj5.x = display.contentCenterX
scrollView:insert(garTextObj5)

local garObj5 = display.newText("YARD WASTE \n", 0, 245, 280, 0, native.systemFont, 20)
garObj5:setTextColor (0, 0, 0)
garObj5.x = display.contentCenterX
scrollView:insert(garObj5)

local garText6 = "Ashes-not hot\nBranches\nCactus\nCorks\nFlax\nGrass clippings and leaves\nHay\nHoliday trees\nIce plant\nIvy\nLandscape vegitation\nLumber (painted, treated)\nPalm fronds\nPet waste\nPlant trimmings\nPoison oak\nSawdust\nShrubs\nSmall prunings\nSmall stumps\nSod (remove as much soil as possible)\nTan bark\nTree trimmings\nYucca\n\n"
local garTextObj6 = display.newText(garText6, 0, 265, 280, 0, native.systemFont, 17)
garTextObj6:setTextColor (0, 0, 0)
garTextObj6.x = display.contentCenterX
garTextObj6.isVisible = false
scrollView:insert(garTextObj6)

return scrollView
end

function newGuideScreen()

function handleExixButton(event)
  if ( event.phase == "began" ) then
        sv1.isVisible = false
        sv2.isVisible = false
        sv3.isVisible = false
        sv4.isVisible = false
    end 
    return true
  end

function handleButton1( event )
    if ( event.phase == "began" ) then
        print("Button 1 Touched")
        sv1.isVisible = true
    end 
    return true
end

function handleButton2( event )
    if ( event.phase == "began" ) then
        print("Button 2 Touched")
        sv2.isVisible = true
       
    end
    return true
end

function handleButton4( event )
    if ( event.phase == "began" ) then
        print("Button 4 Touched")
        sv3.isVisible = true
       
    end
   return true
end

function handleButton5( event )
    if ( event.phase == "began" ) then
        print("Button 5 Touched")
        sv4.isVisible = true
       
    end
    return true
end

	local myContainer = display.newContainer( 320, 510 )
	myContainer.x = display.contentCenterX 
	myContainer.y = display.contentCenterY + 65
    -- your Buttons ,B1
    local button1 = widget.newButton{
  	onEvent = handleButton1,
    defaultFile = "guide4.jpg",
  	labelColor = { default =  {1, 1, 1}, over = { 0.5, 0.5, 0.5} },
  	font = native.systemFont,
    width = 310,
    height = 120
	}
	button1.x = 0
	button1.y = -191

	myContainer:insert(button1)

	   -- B2
    local button2 = widget.newButton{
  	onEvent = handleButton2,
    defaultFile = "guide2.jpg",
  	labelColor = { default =  {1, 1, 1}, over = { 0.5, 0.5, 0.5} },
  	font = "HelveticaNeue-Light",
    width = 310,
    height = 120
	}
	button2.x = 0
	button2.y = 62

	myContainer:insert(button2)


	   -- B4
    local button4 = widget.newButton{
  	onEvent = handleButton4,
    defaultFile = "guide3.jpg",
  	labelColor = { default =  {0, 0, 0}, over = { 0.5, 0.5, 0.5} },
  	font = "HelveticaNeue-Light",
    width = 310,
    height = 120
	}
	button4.x = 0
	button4.y = -64

	myContainer:insert(button4)

	   -- B5
    local button5 = widget.newButton{
  	onEvent = handleButton5,
    defaultFile = "Reshall.jpg",
  	labelColor = { default =  {1, 1, 1}, over = { 0.5, 0.5, 0.5} },
  	font = "HelveticaNeue-Light",
    width = 310,
    height = 120
	}
	button5.x = 0
	button5.y = 189

	myContainer:insert(button5)

  recrec = display.newRect(0,-191,300,110)
  recrec:setFillColor(1,1,1)
  recrec.alpha = .8
  myContainer:insert(recrec)

  recrec2 = display.newRect(0,62,300,110)
  recrec2:setFillColor(1,1,1)
  recrec2.alpha = .8
  myContainer:insert(recrec2)

  recrec3 = display.newRect(0,-64,300,110)
  recrec3:setFillColor(1,1,1)
  recrec3.alpha = .8
  myContainer:insert(recrec3)

  recrec4 = display.newRect(0,189,300,110)
  recrec4:setFillColor(1,1,1)
  recrec4.alpha = .8
  myContainer:insert(recrec4)

  local recText = display.newText("RECYCLABLES",0, -211, native.systemFont, 22)
  recText:setFillColor(.3,.5,.8)
  myContainer:insert(recText)

  local recImage = display.newImage("Recycling-64.png")
  recImage:translate(0,-170)
  recImage.width = 45
  recImage.height = 45
  myContainer:insert(recImage)




  local recText2 = display.newText("HAZARDOUS WASTE",0, -84, native.systemFont, 22)
  recText2:setFillColor(1,0,0)
  myContainer:insert(recText2)

  local hazImage = display.newImage("ewaste.png")
  hazImage:translate(0,-44)
  hazImage.width = 45
  hazImage.height = 45
  myContainer:insert(hazImage)

  local recText3 = display.newText("FOOD WASTE",0, 42, native.systemFont, 22)
  recText3:setFillColor(0, .4, .2)
  myContainer:insert(recText3)

  local foodImage = display.newImage("Apple-50.png")
  foodImage:translate(0,82)
  foodImage.width = 35
  foodImage.height = 35
  myContainer:insert(foodImage)

  local recText4 = display.newText("GARBAGE",0, 169, native.systemFont, 22)
  recText4:setFillColor(0, 0, 0)
  myContainer:insert(recText4)

  local garImage = display.newImage("Litter Disposal-50.png")
  garImage:translate(0,209)
  garImage.width = 45
  garImage.height = 45
  myContainer:insert(garImage)

  sv1 = sv2()
  sv1.isVisible = false
  myContainer:insert(sv1)

  sv2 = sv4()
  sv2.isVisible = false
  myContainer:insert(sv2)

  sv3 = sv3()
  sv3.isVisible = false
  myContainer:insert(sv3)

  sv4 = sv5()
  sv4.isVisible = false
  myContainer:insert(sv4)

  return myContainer

end