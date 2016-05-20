--to display status bar on phone and not a full screen
display.setStatusBar(display.DefaultStatusBar)
--Default Background
display.setDefault( "background", 1, 1, 1 )

--loading the different pages for the app
local composer = require( "composer" )
local slider = require ("slidingMenu") 
local navBar = require("navBar")
local widget = require ("widget")
local qrscanner = require('plugin.qrscanner')
local homeScreen = require ("homeScreen")
local mapScreen = require ("map")
local guideScreen = require ("guideScreen")
--local scannerScreen = require("scannerScreen")
local aboutScreen = require("aboutScreen")
local loadingScreen = require("loadingScreen")

--barcode reader
function newScannerScreen()

    local container = display.newContainer( 320, 490 )
    container.x = display.contentCenterX 
    container.y = display.contentCenterY 
    --local myText = display.newText( "Hello World!", 100, 200, native.systemFont, 16 )
    --myText:setFillColor( 1, 0, 0 )
    --container:insert(myText)
    return container
end

 function networkListener( event )

    if ( event.isError ) then
        print( "Network error: ", event.response )
    else
        print ( "RESPONSE: " .. event.response )

end
end

function codeListener(message)
    -- message variable contains the value of a scanned QR Code or a barcode.
        print('Scanned message:', message, " Info about product")
        --native.showAlert('Barcode: ', message, "Product Name: ",{'OK'} )
        local strBarcode = tostring(message)
        local myText = display.newText(strBarcode, 100,200, native.systemFont, 17)
        myText:setFillColor( 1, 0, 0 )
        sScreen:insert(myText)
        return true
end

-- Handler Function for hamburger button
function handleLeftButton( event )
    if ( event.phase == "began" ) then
        print("left Button Touched")
       -- navBar.x = display.contentCenterX - 60
        leftButton.x = display.contentCenterX - 40
        hScreen.x = display.contentCenterX + 102
        gScreen.x = display.contentCenterX + 102
        sScreen.x = display.contentCenterX + 102
        aScreen.x = display.contentCenterX + 102
        mScreen.x = display.contentCenterX + 102
        line.x = display.contentCenterX - 58.5

   
        buttonm1.x = display.contentCenterX - 20 
        buttonm2.x = display.contentCenterX + 60
        buttonm3.x = display.contentCenterX + 220
        buttonm4.x = display.contentCenterX + 140
        mapText.x = display.contentCenterX + 102
        aText.x = display.contentCenterX + 102
        gText.x = display.contentCenterX + 102
        sText.x = display.contentCenterX + 102


        panel:show()
    end
    if (event.phase == "ended") then 
    	--navBar.x = 0
        leftButton.x = 10 + leftButton.width * 0.50
        hScreen.x = display.contentCenterX 
        gScreen.x = display.contentCenterX
        sScreen.x = display.contentCenterX
        aScreen.x = display.contentCenterX
        mScreen.x = display.contentCenterX
        line.x = display.contentCenterX - 160 

        
        buttonm1.x = display.contentCenterX - 120
        buttonm2.x = display.contentCenterX - 40
        buttonm3.x = display.contentCenterX + 120
        buttonm4.x = display.contentCenterX + 40
        mapText.x = display.contentCenterX
        aText.x = display.contentCenterX
        gText.x = display.contentCenterX
        sText.x = display.contentCenterX
    	panel:hide()
    return true
   end
end

--Home button handler function
function handleHomeButton( event )
    if ( event.phase == "began" ) then
        --navBar.x = display.contentCenterX - 60
        leftButton.x = display.contentCenterX - 40
        hScreen.isVisible = true
        hScreen.y = display.contentCenterX + 130
        hScreen.x = display.contentCenterX + 102
        gScreen.isVisible = false
        sScreen.isVisible = false
        aScreen.isVisible = false
        mScreen.isVisible = false
        line.isVisible = false

        buttonm1.isVisible = false
        buttonm2.isVisible = false
        buttonm3.isVisible = false
        buttonm4.isVisible = false
        mapText.isVisible = false
        aText.isVisible = false
        sText.isVisible = false
        gText.isVisible = false
        panel:show()
    end
    if (event.phase == "ended") then
       -- navBar.x = 0
        leftButton.x = 10 + leftButton.width * 0.50
        hScreen.x = display.contentCenterX 
        panel:hide()
    return true
   end
end

--Map Handler Function
function handleMapButton( event )
    if ( event.phase == "began" ) then
        --navBar.x = display.contentCenterX - 60
        leftButton.x = display.contentCenterX - 40
        mScreen.isVisible = true
        buttonm1.isVisible = true
        buttonm2.isVisible = true
        buttonm3.isVisible = true
        buttonm4.isVisible = true
        mapText.isVisible = true
        line.isVisible = true
        line.x = display.contentCenterX - 58.5
        mScreen.x = display.contentCenterX + 102
        mScreen.y = display.contentCenterX + 120.5



        buttonm1.y = display.contentCenterY + 250
        buttonm2.y = display.contentCenterY + 250
        buttonm3.y = display.contentCenterY + 250
        buttonm4.y = display.contentCenterY + 250

        mapText.x = display.contentCenterX + 102

        hScreen.isVisible = false
        gScreen.isVisible = false
        aScreen.isVisible = false
        sScreen.isVisible = false
        aText.isVisible = false
        gText.isVisible = false
        sText.isVisible = false
        panel:show()
    end
    if (event.phase == "ended") then 
        --navBar.x = 0
        leftButton.x = 10 + leftButton.width * 0.50
        mScreen.x = display.contentCenterX
        mapText.x = display.contentCenterX
        line.x = display.contentCenterX - 160 

        buttonm1.x = display.contentCenterX - 120
        buttonm2.x = display.contentCenterX - 40
        buttonm3.x = display.contentCenterX + 120
        buttonm4.x = display.contentCenterX + 40

        buttonm1.y = display.contentCenterY + 255
        buttonm2.y = display.contentCenterY + 250
        buttonm3.y = display.contentCenterY + 250
        buttonm4.y = display.contentCenterY + 255
        panel:hide()
    end
    return true

end

--Guide button handler function
function handleGuideButton( event )
    if ( event.phase == "began" ) then
        --navBar.x = display.contentCenterX - 60
        leftButton.x = display.contentCenterX - 40
        gScreen.isVisible = true
        gScreen.x = display.contentCenterX + 102
        gScreen.y = display.contentCenterX + 155
        hScreen.isVisible = false
        aScreen.isVisible = false
        sScreen.isVisible = false
        mScreen.isVisible = false
        buttonm1.isVisible = false
        buttonm2.isVisible = false
        buttonm3.isVisible = false
        buttonm4.isVisible = false
        mapText.isVisible = false
        aText.isVisible = false
        sText.isVisible = false
        gText.isVisible = true
        line.isVisible = true
        line.x = display.contentCenterX - 58.5
        gText.x = display.contentCenterX + 102
        panel:show()
    end
    if (event.phase == "ended") then 
        --navBar.x = 0
        leftButton.x = 10 + leftButton.width * 0.50
        gScreen.x = display.contentCenterX 
        line.x = display.contentCenterX - 160
        gText.x = display.contentCenterX 
        panel:hide()
    return true
   end
end

--Scan button handler
function handleScanButton( event )
    if ( event.phase == "began" ) then
        --navBar.x = display.contentCenterX - 60
        leftButton.x = display.contentCenterX - 40
        sScreen.isVisible = true
        sScreen.x = display.contentCenterX + 102
        sScreen.y = display.contentCenterX + 189
        hScreen.isVisible = false
        aScreen.isVisible = false
        gScreen.isVisible = false
        mScreen.isVisible = false
        buttonm1.isVisible = false
        buttonm2.isVisible = false
        buttonm3.isVisible = false
        buttonm4.isVisible = false
        mapText.isVisible = false
        aText.isVisible = false
        gText.isVisible = false
        sText.isVisible = true
        line.isVisible = true
        line.x = display.contentCenterX - 58.5
        sText.x = display.contentCenterX + 102
        panel:show()
    end
    if (event.phase == "ended") then 
        --navBar.x = 0
        leftButton.x = 10 + leftButton.width * 0.50
        sScreen.x = display.contentCenterX
        line.x = display.contentCenterX - 160 
        sText.x = display.contentCenterX 

        qrscanner.show(codeListener, {
                symbols = {
                    'aztec', 'code39', 'code39mod43', 'code93', 'code128', 'codabar',
                    'databar', 'databar_exp', 'datamatrix', 'ean8', 'ean13', 'interleaved2of5',
                    'itf14', 'i25', 'isbn10', 'isbn13', 'partial', 'pdf417', 'upca', 'upce'
             },
                strings = {
                    title = 'Barcode Scanner',
                    y = 100
                }
    
     
         })
        panel:hide()
    return true
   end
end

--About button handler
function handleAboutButton( event )

    if ( event.phase == "began" ) then
        --navBar.x = display.contentCenterX - 60
        aScreen.isVisible = true
        aScreen.x = display.contentCenterX + 102
        aScreen.y = display.contentCenterX + 160
        aText.isVisible = true
        aText.x = display.contentCenterX + 102
        line.x = display.contentCenterX - 58
        gText.isVisible = false
        sText.isVisible = false
        panel:show()
    end
    if (event.phase == "ended") then 
        --navBar.x = 0
        leftButton.x = 10 + leftButton.width * 0.50
        aScreen.x = display.contentCenterX 
        panel:hide()
        hScreen.isVisible = false
        sScreen.isVisible = false
        gScreen.isVisible = false
        mScreen.isVisible = false
        buttonm1.isVisible = false
        buttonm2.isVisible = false
        buttonm3.isVisible = false
        buttonm4.isVisible = false
        mapText.isVisible = false
        aText.x = display.contentCenterX
        line.x = display.contentCenterX - 160 
        gText.isVisible = false
    return true
   end
end

--navBar = widget.newNavigationBar()

--initializing sliding menu
panel = widget.newPanel{}
--panel.background = display.newRect( 0, 0, panel.width, panel.height )
--panel.background:setFillColor( 1,1,1)
panel.background = display.newImage("bg12.jpg",0,0)
panel:insert( panel.background )

--Adding buttons to menu 
--home button
home = widget.newButton{
onEvent = handleHomeButton,
width = 40,
height = 40,
label = "Home",
labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.3 } },
defaultFile = "Home.png",
x = -3.5,
y= -205,
font = native.systemFont,
fontSize = 18,
labelYOffset = 35,}
panel:insert(home)

--map button
map = widget.newButton{
onEvent = handleMapButton,
width = 40,
height = 40,
label = "Map",
labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.3 } },
defaultFile = "Map Marker-50.png",
x = -3.5,
y= - 95,
font = native.systemFont,
fontSize = 18,
labelYOffset = 35,}
panel:insert(map)

--guide button
guide = widget.newButton{
onEvent = handleGuideButton,
width = 42,
height = 42,
label = "Guide",
labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.3 } },
defaultFile = "Guide.png",
x = -3.5,
y = 15,
font = native.systemFont,
fontSize = 18,
labelYOffset = 35,}
panel:insert(guide)

--scanner button
scanner = widget.newButton{
onEvent = handleScanButton,
width = 40,
height = 40,
label = "Scanner",
labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.3 } },
defaultFile = "Barcode-50.png",
x = -3.5,
y= 122,
font = native.systemFont,
fontSize = 18,
labelYOffset = 30,
}
panel:insert(scanner)

--about button
about = widget.newButton{
onEvent = handleAboutButton,
width = 40,
height = 40,
label = "About",
labelColor = { default={ 1, 1, 1 }, over={ 0, 0, 0, 0.3 } },
defaultFile = "About-50.png",
x = -3.5,
y= 230,
font = native.systemFont,
fontSize = 18,
labelYOffset = 35,}
panel:insert(about)

--creating screens
-- guide, scanner, about, home, map
gScreen = newGuideScreen()
sScreen = newScannerScreen()
aScreen = newAboutScreen()
hScreen = newHomeScreen()
mScreen = newMap()
hScreen:toBack()
mScreen:toBack()
aScreen:toBack()

--setting screen visibility to false
gScreen.isVisible = false
sScreen.isVisible = false
aScreen.isVisible = false
mScreen.isVisible = false
buttonm1 = mScreen.button1()
buttonm1.isVisible = false
buttonm2 = mScreen.button2()
buttonm2.isVisible = false
buttonm3 = mScreen.button3()
buttonm3.isVisible = false
buttonm4 = mScreen.button4()
buttonm4.isVisible = false
mapText = mScreen.navBarText()
mapText.isVisible = false

leftButton = widget.newButton{
onEvent = handleLeftButton,
width = 30,
height = 30,
defaultFile = "hamIcon.png",
}

leftButton.x = 10 + leftButton.width * 0.5
leftButton.y = 40

aText = display.newText ("About the Project",display.contentCenterX, 40, native.systemFont, 16 )
aText:setFillColor( 0, 0, 0 )
aText.isVisible = false

gText = display.newText ("Waste Guide",display.contentCenterX, 40, native.systemFont, 16 )
gText:setFillColor( 0, 0, 0 )
gText.isVisible = false

sText = display.newText ("Scanner",display.contentCenterX, 40, native.systemFont, 16 )
sText:setFillColor( 0, 0, 0 )
sText.isVisible = false
  
line = display.newLine( 0, 60, 320, 60 )
line:setStrokeColor( 0, 0, 0 )
line.strokeWidth = 1
line.isVisible = false
--loading screen
--loadingScreen = newLoadScreen()
--transition.to( loadingScreen, { time=500, y=-290, transition=easing.inExpo } )






