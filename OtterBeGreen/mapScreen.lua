 function networkListener( event )

    if ( event.isError ) then
        print( "Network error: ", event.response )
    else
        print ( "RESPONSE: " .. event.response )

    end
    end
    network.request( "https://api.outpan.com/v2/products/99909?apikey=af5af3064e3fdd59d3356f0bea534974", "GET", networkListener )



    
    