for k = 1, 16 do
	for i = 1, 15 do
		if(turtle.detect()) then
			turtle.dig()
		end
		turtle.forward()
	end

	if (k%2 == 0) then
		turtle.turnLeft()
		turtle.forward()
		turtle.turnLeft()
	else
		turtle.turnRight()
		turtle.forward()
		turtle.turnRight()
	end
end
