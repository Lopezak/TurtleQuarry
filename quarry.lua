local movement = require("movement")


local tArgs = { ... }

--[[
if #tArgs ~= 1 then
	print( "Usage: TurtleMove16by16 <depth>")
	return
end

local input = tonumber( tArgs[1] )
]]

-- Main Program Here

movement.whereAmI()
movement.rotateLeft(2)
movement.moveForward(2)
movement.whereAmI()
movement.moveBack(2)
movement.moveDown(1)
movement.moveUp(3)
movement.moveBack(2)
movement.rotateRight(1)
movement.moveForward(1)
movement.whereAmI()
os.sleep(3)
movement.home()
movement.whereAmI()

-- local tableTest = {}

--inventoryString = textutils.serialize(turtle.getItemDetail(), tableTest)

-- testStr = "Hello there, Adam"
-- testPos = string.find(testStr, ",")
-- print(testPos)
-- testSubStr = string.sub(testStr, testPos+2)
-- print(testSubStr)

--local separatorNum = string.find(inventoryString, ",")

--local itemTable = { name = string.sub(inventoryString, separatorNum - 1) }

-- print(inventoryString.name)
-- print(separatorNum)
--print(itemTable[1])

-- print(itemTable.name)
-- print(itemTable.count)
