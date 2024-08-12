_G.love = require("love")

---- Color functions ----
function _G.setColor(r, g, b, a)
	love.graphics.setColor(r / 255, g / 255, b / 255, a)
end

function _G.setBackgroundColor(r, g, b, a)
	love.graphics.setBackgroundColor(r / 255, g / 255, b / 255, a)
end

---- Draw primitives
function _G.drawRectangle(mode, x1, y1, x2, y2)
	love.graphics.rectangle(mode, x1, y1, x2, y2)
end

function _G.drawCircle(mode, x, y, r)
	love.graphics.circle(mode, x, y, r)
end

---- Love Functions ----
function love.load()
	setBackgroundColor(50, 50, 50, 0.5)
end

function love.update(dt)
	_G.width, _G.height = love.graphics.getDimensions()
	_G.centerX, _G.centerY = width / 2, height / 2
end

function love.draw()
	setColor(103, 41, 118, 1)
	drawRectangle("fill", 20, 20, width - 40, height - 40)
	setColor(0, 0, 0, 1)
	drawCircle("line", centerX, centerY, 5)
end
