local xPos, yPos, zPos = 0, 0, 0
local xDir, yDir, zDir = 0, 1, 1

-- Base Movement Functions

function rotateLeft(spins)
    for i = 1, spins do
        turtle.turnLeft()
        local temp = xDir
        xDir = -zDir
        zDir = temp
    end
end

function rotateRight(spins) 
	for i = 1, spins do
        turtle.turnRight()
        local temp = xDir
        xDir = zDir
        zDir = -temp
    end
end

function moveBack(steps)
    for i = 1, steps do 
        if turtle.back() then
            xPos = xPos - xDir
            zPos = zPos - zDir
        end
    end
end

function moveForward(steps)
    for i = 1, steps do
        if turtle.forward() then
            xPos = xPos + xDir
            zPos = zPos + zDir
        end
    end
end

function moveUp(levels)
    for i = 1, levels do
        if turtle.up() then
            yPos = yPos + yDir
        end
    end
end

function moveDown(levels)
    for i = 1, levels do
        if turtle.down() then
            yPos = yPos - yDir
        end
    end
end

function checkFuel()
	if (turtle.getFuelLevel() == 0) then
		print("Help, I need fuel!")
	end
end

function home()
--get x to zero from positive
    while xPos > 0 do
        if xDir == 1 then
            rotateLeft(2)
        elseif xDir == 0 then
            if zDir == 1 then
                rotateLeft(1)
            elseif zDir == -1 then
                rotateRight(1)
            end
        end
        moveForward(1)
    end

--get x to zero from negative
    while xPos < 0 do
        if xDir == -1 then
            rotateLeft(2)
        elseif xDir == 0 then
            if zDir == -1 then
                rotateLeft(1)
            elseif zDir == 1 then
                rotateRight(1)
            end
        end
        moveForward(1)
    end

--get z to zero from positive
    while zPos > 0 do
        if zDir == 1 then
            rotateLeft(2)
        elseif zDir == 0 then
            if xDir == -1 then
                rotateLeft(1)
            elseif xDir == 1 then
                rotateRight(1)
            end
        end
        moveForward(1)
    end

--get z to zero from negative
    while zPos < 0 do
        if zDir == -1 then
            rotateLeft(2)
        elseif zDir == 0 then
            if xDir == 1 then
                rotateLeft(1)
            elseif xDir == -1 then
                rotateRight(1)
            end
        end
        moveForward(1)
    end

--get y to zero from positive
    if yPos > 0 then
        moveDown(yPos)
    end

--get y to zero from negative
    if yPos < 0 then
        moveUp(yPos)
    end

--face front
   
    while zDir ~= 1 do
        rotateLeft(1)
    end

end

function whereAmI()
    print("x = " .. xPos .. ", y = " .. yPos .. ", z = " .. zPos)
end

return {moveBack = moveBack, 
    moveForward = moveForward,
    moveUp = moveUp,
    moveDown = moveDown, 
    rotateLeft = rotateLeft, 
    rotateRight = rotateRight,
    home = home, 
    checkFuel = checkFuel,
    whereAmI = whereAmI}
