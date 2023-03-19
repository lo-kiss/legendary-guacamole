-- put user settings here
-- this module will be loaded after everything else when the application starts
-- it will be automatically reloaded when saved

local core = require "core"
local keymap = require "core.keymap"
local config = require "core.config"
local style = require "core.style"

------------------------------ Themes ----------------------------------------

-- some themes I like:
-- core.reload_module("colors.onedark")
-- core.reload_module("colors.monokai")
-- core.reload_module("colors.duotone")
-- core.reload_module("colors.github_dark")
core.reload_module("colors.toma")
-- core.reload_module("colors.plasma")

-- light:
-- core.reload_module("colors.github")
-- core.reload_module("colors.moe")

-- do not like (can delete)
-- core.reload_module("colors.gruvbox_dark")
-- core.reload_module("colors.monokai-pro-classic")
-- core.reload_module("colors.tokyo-night")

--------------------------- Key bindings -------------------------------------

-- keymap.add { ["ctrl+escape"] = "core:quit" }
keymap.add { ["f1"] = "core:find-command" }
keymap.add { ["f2"] = "treeview:toggle" }
keymap.add { ["f5"] = "console:run" }
keymap.add { ["ctrl+f5"] = "console:toggle" }

------------------------------- Fonts ----------------------------------------

-- customize fonts
-- style.font = renderer.font.load(DATADIR .. "/fonts/FiraSans-Regular.ttf", 14 * SCALE)
style.code_font = renderer.font.load(DATADIR .. "/fonts/JetBrainsMono-Regular.ttf", 16 * SCALE)
-- style.code_font = renderer.font.load("/usr/share/fonts/TTF/iosevka.ttf", 18 * SCALE)

-- style.code_font = renderer.font.load("/usr/share/fonts/bitmap/tobi/CodingFontTobi1.pcf",  20 * SCALE)
--
-- DATADIR is the location of the installed Lite XL Lua code, default color
-- schemes and fonts. (/usr/share/lite-xl/)
-- USERDIR is the location of the Lite XL configuration directory. (~/.config/lite-xl)
--
-- font names used by lite:
-- style.font          : user interface
-- style.big_font      : big text in welcome screen
-- style.icon_font     : icons
-- style.icon_big_font : toolbar icons
-- style.code_font     : code
--
-- the function to load the font accept a 3rd optional argument like:
--
-- {antialiasing="grayscale", hinting="full", bold=true, italic=true, underline=true, smoothing=true, strikethrough=true}
--
-- possible values are:
-- antialiasing: grayscale, subpixel
-- hinting: none, slight, full
-- bold: true, false
-- italic: true, false
-- underline: true, false
-- smoothing: true, false
-- strikethrough: true, false

------------------------------ Plugins ----------------------------------------

-- enable or disable plugin loading setting config entries:

-- enable plugins.trimwhitespace, otherwise it is disable by defaujlt:
-- config.plugins.trimwhitespace = true
config.plugins.bigclock = true
config.plugins.navigate = true
config.plugins.copyfilelocation = true
config.plugins.extend_selection_line = true
-- config.plugins.my_plugin = true
-- config.plugins.dashboard = true
config.plugins.autoinsert = true
config.plugins.colorpreview = true
config.plugins.gitstatus = true
config.plugins.markers = true
config.plugins.console = true
config.plugins.spellcheck = true
config.plugins.select_colorscheme = true
config.plugins.autosaveonfocuslost = true
config.plugins.smallclock = true
config.plugins.indentguide = true
config.plugins.motiontrail = true
config.plugins.selectionhighlight = true

-- config.plugins.custom_caret.shape = "block"

config.plugins.linenumbers = true
config.line_numbers = true
config.relative_line_numbers = true

-- language stuff
config.plugins.language_gdscript = true

-- disable detectindent, otherwise it is enabled by default
config.plugins.detectindent = false
config.plugins.autosave = false
config.plugins.typingspeed = false
config.plugins.bracketmatch = false
config.plugins.centerdoc = false
config.plugins.statusclock = false
config.plugins.rainbowparen = false
config.plugins.custom_caret = false




---------------------------- Miscellanous --------------------------------------
-- config.force_scrollbar_status = "expanded" -- makes the scroll bar permanently wide
-- config.transitions = false
config.tab_type = "hard"
config.indent_size = 4

-- modify list of files to ignore when indexing the project:
-- config.ignore_files = {
--   -- folders
--   "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
--   "^node_modules/", "^%.cache/", "^__pycache__/",
--   -- files
--   "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
--   "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
--   "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
--   "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
-- }

