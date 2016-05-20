
local widget = require("widget")
function newMapScreen()

	local container = display.newContainer( 320, 490 )
	container.x = display.contentCenterX 
	container.y = display.contentCenterY + 65
	local myRectangle = display.newRect( 0, 0, 1000, 1000 )
    myRectangle:setFillColor( .99)
    container:insert(myRectangle)
    local myText = display.newText( "Hello World!", 100, 200, native.systemFont, 16 )
	myText:setFillColor( 1, 0, 0 )
	container:insert(myText)
   
    return container

end