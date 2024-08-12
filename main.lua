_G.love = require("love")

function _G.debug.drawFPS(x, y)
	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.print("FPS:" .. tostring(love.timer.getFPS()), x, y)
	love.graphics.rectangle("line", 0, 0, 65, 35)
end

---- Love Functions ----
function love.load()
	love.graphics.setBackgroundColor(50 / 255, 50 / 255, 50 / 255, 0.5)
end

function love.update(dt)
	_G.width, _G.height = love.graphics.getDimensions()
	_G.centerX, _G.centerY = width / 2, height / 2
end

function love.draw()
	love.graphics.setColor(103 / 255, 41 / 255, 118 / 255, 1)

	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.circle("line", centerX, centerY, 5)

	debug.drawFPS(10, 10)
end
