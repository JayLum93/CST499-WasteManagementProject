
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

function sv()
local scrollView = widget.newScrollView
{
	left = -160,
	top = -350,
	width = 320,
	height = 1500,
	topPadding = 280,
	bottomPadding = 250,
	horizontalScrollDisabled = true,
	verticalScrollDisabled = false,
	listener = scrollListener
}

local myImage = display.newImage("cm.jpg")
myImage.width = 320
myImage.height = 400
myImage.x  = 160
--myImage.y = - 90 
myImage:toBack()
scrollView:insert(myImage)


local myRectangle = display.newRect( 160, 20, 310, 300 )
myRectangle:setFillColor(1,1,1)
myRectangle.alpha = .8
myRectangle:toFront()
scrollView:insert(myRectangle)

-- text in ScrollView
local aboutText = "Waste management is a very important issue at CSUMB. With our campuses’ zero waste goal, more needs to be done by students, staff and faculty in order to make that goal attainable, but there’s a problem. CSUMB students, faculty and staff struggle with determining which items are recyclable, compostable or landfill on our campus."
local aboutTextObj = display.newText(aboutText, 0, 30, 280, 0, native.systemFont, 17)
aboutTextObj:setTextColor (0)
aboutTextObj.x = display.contentCenterX
scrollView:insert(aboutTextObj)

local aboutText2 = "Proposed Solution"
local aboutTextObj2 = display.newText(aboutText2, 0, 240, 300, 0, native.systemFont, 25)
aboutTextObj2:setTextColor (.0235, .035, .2509)
aboutTextObj2.x = display.contentCenterX
scrollView:insert(aboutTextObj2)

local aboutText3 = "A team of 5 working alongside Environmental Science major Rachel Sutton and CSUMB professor Dr. Miguel Lara, have teamed up to try and solve this problem via the creation of this mobile application, Otter Be Green and an online game, TrashSplash. "
local aboutTextObj3 = display.newText(aboutText3, 0, 335, 300, 0, native.systemFont, 16)
aboutTextObj3:setTextColor (0)
aboutTextObj3.x = display.contentCenterX
scrollView:insert(aboutTextObj3)

local aboutText4 = "Since most people use their smartphones or tablets more than computers, there was also the need for the development of an application to complement the online game. This app includes a map of all the waste disposal sites on campus and information on products and their proper form of disposal. The app is in its prototype stages and a lot more can be done to improve it by perhaps future capstone groups."
local aboutTextObj4 = display.newText(aboutText4, 0, 540, 300, 0, native.systemFont, 16)
aboutTextObj4:setTextColor (0)
aboutTextObj4.x = display.contentCenterX
scrollView:insert(aboutTextObj4)

local aboutText5 = "On the online game side, TrashSplash aims to inform the students taking the ENVS 201 class as as well as the CSUMB community on proper waste disposal practices through an interactive and engaging game. The game can be found at: http://itcdland.csumb.edu/~sustainability/ "
local aboutTextObj5 = display.newText(aboutText5, 0, 750, 300, 0, native.systemFont, 16)
aboutTextObj5:setTextColor (0)
aboutTextObj5.x = display.contentCenterX
scrollView:insert(aboutTextObj5)

return scrollView
end


function newAboutScreen()

	local container = display.newContainer( 320, 520 )
	container.x = display.contentCenterX 
	container.y = display.contentCenterY 
	local scrollV = sv()
	container:insert(scrollV)
    return container

end