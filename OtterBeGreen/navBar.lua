local widget = require( "widget" )

function widget.newNavigationBar ()
   
   local leftB = {
   onEvent = handleLeftButton,
   width = 30,
   height = 30,
   defaultFile = "hamIcon.png"}
   print(leftB.onEvent)

   local customOptions = ({
   title = "Waste Guide",
   backgroundColor = { 0, 0, 0 },
   --background = "ban.jpg",
   titleColor = {0, 0, 0},
   font = "HelveticaNeue",
   leftButton = leftB,
   y =35,
   includeStatusBar = true})

   print(customOptions.leftButton.onEvent)

   local opt = {} 
   opt.left = customOptions.left or nil
   opt.top = customOptions.top or nil
   opt.width = customOptions.width or  0--display.contentWidth
   opt.height = customOptions.height or 0
   if ( customOptions.includeStatusBar == nil ) then
      opt.includeStatusBar = true  -- assume status bars for business apps
   else
      opt.includeStatusBar = customOptions.includeStatusBar
   end
 
   -- Determine the amount of space to adjust for the presense of a status bar
   local statusBarPad = 0
   if ( opt.includeStatusBar ) then
      statusBarPad = display.topStatusBarContentHeight
   end
 
   opt.x = customOptions.x or display.contentCenterX 
   opt.y = customOptions.y or (opt.height + statusBarPad) * 0.5
   opt.id = customOptions.id
   opt.isTransluscent = customOptions.isTransluscent or true
   opt.background = customOptions.background
   opt.backgroundColor = customOptions.backgroundColor or nil
   opt.title = customOptions.title or ""
   opt.titleColor = customOptions.titleColor or { 0, 0, 0 }
   opt.font = customOptions.font or native.systemFontBold
   opt.fontSize = customOptions.fontSize or 18
   opt.leftButton = customOptions.leftButton 
   print(opt.leftButton.onEvent)
   -- If "left" and "top" parameters are passed, calculate the X and Y
   if ( opt.left ) then
      opt.x = opt.left + opt.width * 0.5
   end
   if ( opt.top ) then
      opt.y = opt.top + (opt.height + statusBarPad) * 0.5
   end

   local barContainer = display.newGroup()
   local background = display.newRect( barContainer, opt.x, opt.y, opt.width, opt.height + statusBarPad )
   if ( opt.background ) then
      background.fill = { type="image", filename=opt.background }
   elseif ( opt.backgroundColor ) then
      background.fill = opt.backgroundColor
   else
      background.fill = { 1, 1, 1 } 
   end
    if ( opt.title ) then 
      local title = display.newText( opt.title, background.x, background.y + statusBarPad * 0.5, opt.font, opt.fontSize )
      title:setFillColor( unpack(opt.titleColor) )
      barContainer:insert( title )
   end
   local leftButton
   if ( opt.leftButton ) then
      if ( opt.leftButton.defaultFile ) then  -- construct an image button
         leftButton = widget.newButton({
            id = opt.leftButton.id,
            width = opt.leftButton.width,
            height = opt.leftButton.height,
            baseDir = opt.leftButton.baseDir,
            defaultFile = opt.leftButton.defaultFile,
            overFile = opt.leftButton.overFile,
            onEvent = opt.leftButton.onEvent
            })
      end
      leftButton.x = 10 + leftButton.width * 0.5
      leftButton.y = 40
      barContainer:insert( leftButton )  -- insert button into container group
   end
 
    return barContainer
end 



