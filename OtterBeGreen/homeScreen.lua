display.setStatusBar(display.DefaultStatusBar)
local widget = require("widget")
function newHomeScreen()
	local myContainer = display.newContainer( 320, 580)
	myContainer.x = display.contentCenterX 
	myContainer.y = display.contentCenterY 
	local myImage = display.newImage("csumb.jpg")
	local myText = display.newText("Otter ", 0,-50 ,"JandaCurlygirlPop.ttf", 70)
	local myText2 = display.newText("Be Green", 0,0 ,"JandaCurlygirlPop.ttf",60)
	local myText3 = display.newText("Making our campus greener one otter at a time", 0, 40,"cookiesmilk-regular.ttf", 20)
	myText:setFillColor(.0235, .035, .2509)
	myText2:setFillColor(0, .4, .2)
	myText3:setFillColor(1,1,1)
	myImage.width = 320
	myImage.height = 580
	myContainer:insert(myImage)
	myContainer:insert(myText)
	myContainer:insert(myText2)
	myContainer:insert(myText3)
    return myContainer

end

--.76,.65,.33