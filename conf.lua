function love.conf(t)
	-- window
	t.window.title = "Love"
	--t.window.icon = "data/assets/icons/ICON_NAME"
	t.window.width = 1200
	t.window.height = 700
	t.window.resizable = true
	t.window.fullscreen = false
	t.window.vsync = 1
	t.window.display = 1

	-- properties
	t.version = "11.5"
	t.identity = "data/saves"

	-- platform specific
	t.console = false --windows only
	t.externalstorage = true -- android only
	t.audio.mic = true -- android

	-- visual
	t.gammacorrect = true
end
