-- for widget buttons
local widget = require ("widget")
display.setDefault( "background", 1, 1, 1 )

function newMap()
	-- Arrays containing marker information for map
	local lat = 
	{
		--North Quad : Vineyard Suites
		36.65654,
		36.65654,
		36.65656,
		-- North Quad : Strawberry Apartments
		36.65616,
		36.65616,
		36.65618,
		-- North Quad : Pinnacle Suites
		36.65499,
		36.655,
		36.65497,
		-- Main Quad : Heron Hall
		36.65448,
		36.65451,
		-- Main Quad : Dining Commons
		36.65462,
		36.6546,
		36.65442,
		36.65439,
		36.65438,
		-- Main Quad : Otter Express
		36.65462,
		36.65462,
		36.65462,
		36.65462,
		--Main Quad : Student Center
		36.65446,
		36.65444,
		--Main Quad : Wave Hall
		36.65395,
		36.65396,
		--Main Quad : Manzanita Hall
		36.65308,
		36.65308,
		36.65308,
		36.65299,
		36.65297,
		-- Main Quad : Avocet Hall
		36.65309,
		36.65306,
		36.65303,
		-- Main Quad : Sanderling Hall
		36.65309,
		36.65308
	}

	local long = 
	{
		--North Quad : Vineyard Suites
		-121.80197, 
		-121.80191,
		-121.80194,
		-- North Quad : Strawberry Apartments
		-121.80032,
		-121.80026,
		-121.80029,
		-- North Quad : Pinnacle Suites
		-121.80194,
		-121.80188,
		-121.80191,
		-- Main Quad : Heron Hall
		-121.79966,
		-121.80003,
		-- Main Quad : Dining Commons
		-121.79875,
		-121.79875,
		-121.7989,
		-121.7989,
		-121.7989,
		-- Main Quad : Otter Express
		-121.79828,
		-121.79825,
		-121.79822,
		-121.79819,
		--Main Quad : Student Center
		-121.79719,
		-121.7972,
		--Main Quad : Wave Hall
		-121.79609,
		-121.79606,
		--Main Quad : Manzanita Hall
		-121.79676,
		-121.7968,
		-121.79686,
		-121.79733,
		-121.79732,
		-- Main Quad : Avocet Hall
		-121.79997,
		-121.79998,
		-121.79998,
		-- Main Quad : Sanderling Hall
		-121.8009,
		-121.80095
	}

	local markerTitle = 
	{
		--North Quad : Vineyard Suites-
		"Recycle - North Quad",
		"Recycle - North Quad",
		"Waste - North Quad",
		-- North Quad : Strawberry Apartments
		"Recycle - North Quad",
		"Recycle - North Quad",
		"Waste - North Quad",
		-- North Quad : Pinnacle Suites
		"Recycle - North Quad",
		"Recycle - North Quad",
		"Waste - North Quad",
		-- Main Quad : Heron Hall
		"Recycle - Main Quad",
		"Waste - Main Quad",
		-- Main Quad : Dining Commons
		"Waste - Main Quad",
		"Waste - Main Quad",
		"Compost - Main Quad",
		"Compost - Main Quad",
		"Recycle - Main Quad",
		-- Main Quad : Otter Express
		"Waste - Main Quad",
		"Waste - Main Quad",
		"Recycle - Main Quad",
		"Recycle - Main Quad",
		--Main Quad : Student Center
		"Waste - Main Quad",
		"Recycle - Main Quad",
		--Main Quad : Wave Hall
		"Recycle - Main Quad",
		"Waste - Main Quad",
		--Main Quad : Manzanita Hall
		"Waste - Main Quad",
		"Waste - Main Quad",
		"Recycle - Main Quad",
		"Waste - Main Quad",
		"Recycle - Main Quad",
		-- Main Quad : Avocet Hall
		"Recycle - Main Quad",
		"Waste - Main Quad",
		"Waste - Main Quad",
		-- Main Quad : Sanderling Hall
		"Recycle - Main Quad",
		"Waste - Main Quad"
	}

	local markerSubtitle = 
	{
		--North Quad : Vineyard Suites
		"Recycling bin near Vineyard Suites",
		"Recycling bin near Vineyard Suites",
		"Waste bin near Vineyard Suites",
		-- North Quad : Strawberry Apartments
		"Recycling bin near Strawberry Apartments",
		"Recycling bin near Strawberry Apartments",
		"Waste bin near Strawberry Apartments",
		-- North Quad : Pinnacle Suites
		"Recycling bin near Pinnacle Suites",
		"Recycling bin near Pinnacle Suites",
		"Waste bin near Pinnacle Suites",
		-- Main Quad : Heron Hall
		"Recycling bin near Heron Hall",
		"Waste bin near Heron Hall",
		-- Main Quad : Dining Commons
		"Waste bin near Dining Commons",
		"Waste bin near Dining Commons",
		"Compost bin near Dining Commons",
		"Compost bin near Dining Commons",
		"Recycling bin near Dining Commons",
		-- Main Quad : Otter Express
		"Waste bin near Otter Express",
		"Waste bin near Otter Express",
		"Recycling bin near Otter Express",
		"Recycling bin near Otter Express",
		--Main Quad : Student Center
		"Waste bin near Student Center",
		"Recycling bin near Student Center",
		--Main Quad : Wave Hall
		"Recycling bin near Wave Hall",
		"Waste bin near Wave Hall",
		--Main Quad : Manzanita Hall
		"Waste bin near Manzanita Hall",
		"Waste bin near Manzanita Hall",
		"Recycling bin near Manzanita Hall",
		"Waste bin near Manzanita Hall",
		"Recycling bin near Manzanita Hall",
		-- Main Quad : Avocet Hall
		"Recycling bin near Avocet Hall",
		"Waste bin near Avocet Hall",
		"Waste bin near Avocet Hall",
		-- Main Quad : Sanderling Hall
		"Recycling bin near Sanderling Hall",
		"Waste bin near Sanderling Hall"
	}

	local locationNumber = 1 -- a counter to display on location labels
	local currentLocation, currentLatitude, currentLongitude



	myMap = native.newMapView( display.contentCenterX, display.contentCenterY , 320, 440 )



	if myMap then
	-- Display a normal map with vector drawings of the streets.
	-- Other mapType options are "satellite" and "hybrid".
	myMap.mapType = "normal"

	-- The MapView is just another Corona display object and can be moved, resized, etc.
	--fuiiscreen coordinates x y
	myMap.x =0
	myMap.y = -120

	-- Map initial view is set to CSUMB's main address
	myMap:setCenter(36.6544501,-121.8039523) 


	--Map markers with custom labels
	local function locationHandler( event )

    if ( event.isError ) then
        print( "Map Error: " .. event.errorMessage )
    else

    	for i = 1, #lat do 

    		if (markerTitle[i] == "Waste - North Quad" or markerTitle[i] == "Waste - Main Quad") then
				myMap:addMarker(lat[i], long[i],
				{
					title = markerTitle[i],
					subtitle = markerSubtitle[i],
					imageFile = "trash.png"
				})

			elseif (markerTitle[i] == "Recycle - North Quad" or markerTitle[i] == "Recycle - Main Quad") then
				myMap:addMarker(lat[i], long[i],
				{
					title = markerTitle[i],
					subtitle = markerSubtitle[i],
					imageFile = "recycle.png"
				})
			elseif (markerTitle[i] == "Compost - Main Quad") then
				myMap:addMarker(lat[i], long[i],
				{
					title = markerTitle[i],
					subtitle = markerSubtitle[i],
					imageFile = "compost.png"
				})
			else
				myMap:addMarker(lat[i], long[i],
				{
					title = markerTitle[i],
					subtitle = markerSubtitle[i]
				})
			end 

		end
		myMap:addMarker(36.6542596, -121.8006518,
		{
			title = "Ewaste disposal"
		})
    end

	end

 myMap:requestLocation( "100 Campus Center, Seaside, CA", locationHandler )

end

-- Finding a recycling bin nearest to the user
button1Release = function( event )
	-- Do not continue if a MapView has not been created.
	
	if myMap == nil then
		return
	end

	-- Fetch the user's current location
	currentLocation = myMap:getUserLocation()
	if currentLocation.errorCode then
		if currentLocation.errorCode ~= 0 then -- errorCode 0 is: Pending User Authorization!
			currentLatitude = 0
			currentLongitude = 0
			native.showAlert( "Error", currentLocation.errorMessage, { "OK" } )
		end
	else
		-- Current location data was received.
		currentLatitude = currentLocation.latitude
		currentLongitude = currentLocation.longitude

		--Shortest Distance algorithm
		local initdX = currentLongitude - long[1]
	    local initdY = currentLatitude - lat[1]
	    local nearestBinLat = lat[1]
	    local nearestBinLong = long[1]
	    local locationTitle = markerSubtitle[1]
	 
	    local shortestDistance = math.sqrt( ( initdX^2 ) + ( initdY^2 ) )

		for i = 2, #lat do
			if (markerTitle[i] == "Recycle - North Quad" or markerTitle[i] == "Recycle - Main Quad") then
				local dX = currentLongitude - long[i]
		    	local dY = currentLatitude - lat[i]
		 
		    	local distance = math.sqrt( ( dX^2 ) + ( dY^2 ) )
		 
		    	if (shortestDistance > distance) then
		    		shortestDistance = distance
		    		nearestBinLat = lat[i]
		    		nearestBinLong = long[i]
		    		locationTitle = markerSubtitle[i]
		    	end
	    	end

		end

		-- Move map so that the trash bin location is at the center.
		myMap:setRegion( nearestBinLat, nearestBinLong, 0.001, 0.001, true )
		native.showAlert( "The recycling location nearest you is the", locationTitle, { "OK" } )
		
	end
end



--finding a waste bin nearest to the user
button2Release = function( event )
	-- Do not continue if a MapView has not been created.
	
	if myMap == nil then
		return
	end

	-- Fetch the user's current location
	currentLocation = myMap:getUserLocation()
	if currentLocation.errorCode then
		if currentLocation.errorCode ~= 0 then -- errorCode 0 is: Pending User Authorization!
			currentLatitude = 0
			currentLongitude = 0
			native.showAlert( "Error", currentLocation.errorMessage, { "OK" } )
		end
	else
		-- Current location data was received.
		currentLatitude = currentLocation.latitude
		currentLongitude = currentLocation.longitude

		--Shortest Distance algorithm
		local initdX = currentLongitude - long[1]
    	local initdY = currentLatitude - lat[1]
    	local nearestBinLat = lat[1]
    	local nearestBinLong = long[1]
    	local locationTitle = markerSubtitle[1]
 
    	local shortestDistance = math.sqrt( ( initdX^2 ) + ( initdY^2 ) )

		for i = 2, #lat do
			if (markerTitle[i] == "Waste - North Quad" or markerTitle[i] == "Waste - Main Quad") then
				local dX = currentLongitude - long[i]
	    		local dY = currentLatitude - lat[i]
	 
	    		local distance = math.sqrt( ( dX^2 ) + ( dY^2 ) )
	 
	    		if (shortestDistance > distance) then
	    			shortestDistance = distance
	    			nearestBinLat = lat[i]
	    			nearestBinLong = long[i]
	    			locationTitle = markerSubtitle[i]
	    		end
	    	end
		end

		-- Move map so that the trash bin location is at the center.
		myMap:setRegion( nearestBinLat, nearestBinLong, 0.001, 0.001, true )
		native.showAlert( "The waste location nearest you is the", locationTitle, { "OK" } )	
	end
end


--finding compost bin nearest to the user
button3Release = function( event )
	-- Do not continue if a MapView has not been created.
	
	if myMap == nil then
		return
	end

	-- Fetch the user's current location
	currentLocation = myMap:getUserLocation()
	if currentLocation.errorCode then
		if currentLocation.errorCode ~= 0 then -- errorCode 0 is: Pending User Authorization!
			currentLatitude = 0
			currentLongitude = 0
			native.showAlert( "Error", currentLocation.errorMessage, { "OK" } )
		end
	else
		-- Current location data was received.
		currentLatitude = currentLocation.latitude
		currentLongitude = currentLocation.longitude

		--Shortest Distance algorithm
		local initdX = currentLongitude - long[1]
	    local initdY = currentLatitude - lat[1]
	    local nearestBinLat = lat[1]
	    local nearestBinLong = long[1]
	    local locationTitle = markerSubtitle[1]
	 
	    local shortestDistance = math.sqrt( ( initdX^2 ) + ( initdY^2 ) )

		for i = 2, #lat do
			if (markerTitle[i] == "Compost - Main Quad") then
				local dX = currentLongitude - long[i]
	    		local dY = currentLatitude - lat[i]
	 
	    		local distance = math.sqrt( ( dX^2 ) + ( dY^2 ) )
	 
	    		if (shortestDistance > distance) then
	    			shortestDistance = distance
	    			nearestBinLat = lat[i]
	    			nearestBinLong = long[i]
	    			locationTitle = markerSubtitle[i]
	    		end
	    	end

		end

		-- Move map so that the trash bin location is at the center.
		myMap:setRegion( nearestBinLat, nearestBinLong, 0.001, 0.001, true )
		native.showAlert( "The compost location nearest you is the", locationTitle, { "OK" } )	
	end
end

button4Release = function( event )
	-- Move map so that the Student center location is at the center.
	myMap:setRegion(36.6542596, -121.8006518, 0.001, 0.001, true )
	native.showAlert( "Dispose of your ewaste in the battery box below the front table", locationTitle, { "OK" } )	
end


function myMap.navBarText()
	local myText = display.newText ("Disposal Locations",display.contentCenterX, 40, native.systemFont, 16 )
	myText:setFillColor( 0, 0, 0 )
	return myText
end

function myMap.button1()

local button1 = widget.newButton
{
	defaultFile = "Recycling-64.png",
	emboss = true,
	onRelease = button1Release,
	x = display.contentCenterX,
	y = display.contentCenterY,
	width = 50,
	height = 50
}
return button1
end

function myMap.button2()
local button2 = widget.newButton
{
	defaultFile = "Litter Disposal-50.png",
	emboss = true,
	onRelease = button2Release,
	x = display.contentCenterX ,
	y = display.contentCenterY + 200,
	width = 40,
	height = 40
}
return button2
end

function myMap.button3()
local button3 = widget.newButton
{
	defaultFile = "Apple-50.png",
	emboss = true,
	onRelease = button3Release,
	x = display.contentCenterX,
	y = display.contentCenterY,
	width = 40,
	height = 40
}
return button3
end

function myMap.button4()
local button4 = widget.newButton
{
	defaultFile = "ewaste.png",
	emboss = true,
	onRelease = button4Release,
	x = display.contentCenterX,
	y = display.contentCenterY,
	width = 50,
	height = 50
}
return button4
end


return myMap

end