local hextiles = nil

function love.load()
	hextiles = love.graphics.newImage("ExampleHex.png");
	hextiles:setFilter("nearest", "nearest")
end

function drawHex(x, y, id)
	local dist = 0

	love.graphics.draw(hextiles,
		love.graphics.newQuad((id % 3) * 32,
		  math.floor(id / 3) * 64,
		  32,
		  64,
		  hextiles:getDimensions()),
		x * (25 + dist),
		y * (32 + dist) + (x % 2) * 16)

	--love.graphics.print("[" .. x .. "," .. y .. "]", x * 25, 24 + y * 33 + (x % 2) * 16)
end

function love.draw()
	love.graphics.push()
	love.graphics.scale(2, 2)

	-- [[
	for Y=0,5 do
		for X=1,10,2 do
			local sprite = 1
			if X + Y > 8 then sprite = 4 end

			drawHex(X + 1, Y, sprite)
			drawHex(X, Y, sprite)

			drawHex(X, Y, 0)
			drawHex(X + 1, Y, 0)
		end
	end
	--]]

	--[[

	-- Draw even 2.5D columns before odd ones

	drawHex(2, 0, 1)
	drawHex(1, 0, 1)
	drawHex(4, 0, 1)
	drawHex(3, 0, 4)
	drawHex(2, 1, 1)
	drawHex(1, 1, 1)
	drawHex(4, 1, 4)
	drawHex(3, 1, 1)
	drawHex(2, 2, 1)
	drawHex(1, 2, 1)
	drawHex(4, 2, 4)
	drawHex(3, 2, 4)

	-- Pure 2D can be drawn unsorted

	drawHex(1, 0, 0)
	drawHex(2, 0, 0)
	drawHex(3, 0, 0)
	drawHex(4, 0, 0)
	drawHex(1, 1, 0)
	drawHex(2, 1, 0)
	drawHex(3, 1, 0)
	drawHex(4, 1, 0)
	drawHex(1, 2, 0)
	drawHex(2, 2, 0)
	drawHex(3, 2, 0)
	drawHex(4, 2, 0)

	-- Tile decorations draw on top, 2.5D sorted

	--]]

	
	drawHex(2, 1, 2)
	drawHex(6, 3, 3)

	love.graphics.pop()
end
