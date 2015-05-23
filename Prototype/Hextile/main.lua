local hextiles = nil

function love.load()
	hextiles = love.graphics.newImage("Hextiles.png");
end

function drawHex(x, y, id)
	love.graphics.draw(hextiles,
		love.graphics.newQuad((id % 3) * 32,
		math.floor(id / 3) * 32, 32, 32,
		hextiles:getDimensions()), x * 25,
		y * 32 + (x % 2) * 16)
end

function love.draw()
	
	for Y=1,10 do
                for X=1,20,2 do
                        drawHex(X + 1, Y, 3)
                        drawHex(X, Y, 3)

                        drawHex(X, Y, 1)
                        drawHex(X + 1, Y, 1)
                end
        end
	--[[
	drawHex(1, 0, 3)
    drawHex(2, 0, 3)
    drawHex(3, 0, 5)
    drawHex(4, 0, 5)
	drawHex(1, 1, 5)
    drawHex(2, 1, 5)
    drawHex(3, 1, 3)
    drawHex(4, 1, 3)
    drawHex(1, 2, 3)
    drawHex(2, 2, 3)
   	drawHex(3, 2, 3)
   	drawHex(4, 2, 3)

    drawHex(1, 0, 1)
    drawHex(2, 0, 1)
    drawHex(3, 0, 1)
    drawHex(4, 0, 1)
	drawHex(1, 1, 1)
    drawHex(2, 1, 1)
    drawHex(3, 1, 1)
    drawHex(4, 1, 1)
    drawHex(1, 2, 1)
    drawHex(2, 2, 1)
    drawHex(3, 2, 1)
    drawHex(4, 2, 1)
	]]
end
