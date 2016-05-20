
display.setStatusBar(display.DefaultStatusBar)
local widget = require("widget")

function newLoadScreen()

    local container = display.newContainer( 320, 570 )
    container.x = display.contentCenterX 
    container.y = display.contentCenterY  + 9
    local myRectangle = display.newRect( 0, 0, 1000, 1000 )
    myRectangle:setFillColor( .86 )
    container:insert(myRectangle)
    local myText = display.newText( "Loading", 10, -20, native.systemFont, 16 )
    myText:setFillColor( 1, 0, 0 )
    container:insert(myText)
    return containers

end