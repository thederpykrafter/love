_G.love = require("love")

---- Debug Stats ----
_G.debug = {}

function debug.drawFPS(x, y)
	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.print("FPS:" .. tostring(love.timer.getFPS()), x, y)
	love.graphics.rectangle("line", 0, 0, 65, 35)
end
---- End Debug Stats ----

---- Random Experiments ----
_G.gizmos = {}

function gizmos.followMouse()
	love.graphics.setColor(0, 0, 0, 1)
	love.graphics.circle("fill", mouseX, mouseY, 5)

	love.graphics.setColor(103 / 255, 41 / 255, 118 / 255, 1)
	love.graphics.circle("line", mouseX, mouseY, 5)
end
---- End Random Experiments ----

---- Love Functions ----
function love.load()
	love.graphics.setBackgroundColor(50 / 255, 50 / 255, 50 / 255, 0.5)
end

function love.update(dt)
	_G.width, _G.height = love.graphics.getDimensions()
	_G.centerX, _G.centerY = width / 2, height / 2
	_G.mouseX, _G.mouseY = love.mouse.getPosition()
end

function love.draw()
	debug.drawFPS(10, 10)

	gizmos.followMouse()
end
---- End Love Functions ----
