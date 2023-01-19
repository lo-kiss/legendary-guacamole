-- load standard vis module, providing parts of the Lua API
require('vis')
require('plugins/vis-commentary')

vis.events.subscribe(vis.events.INIT, function()
	-- Your global configuration options
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	-- Your per window configuration options e.g.
	vis:command("set theme base16-circus")
	vis:command("set ai on")
	vis:command("set rnu on")
	vis:command("set tw 4")
	vis:command("set cul off")
	vis:command("set cc 80")
	vis:command("set show-eof off")
end)

