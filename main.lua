local macTrackpad = require( "plugin.macTrackpad" )


local myBox = display.newRect( display.contentCenterX, display.contentCenterY, 100, 100 )

macTrackpad.init(function ( event)
	if (event.type == "rotation") then
		myBox.rotation = myBox.rotation-event.rotation
	end
	if (event.type == "magnify") then
		myBox.xScale, myBox.yScale = myBox.xScale*(event.magnification+1), myBox.yScale*(event.magnification+1)
	end
	print(event.type)
	if (event.type == "pressure") then
		print( event.pressure )
	end
end )