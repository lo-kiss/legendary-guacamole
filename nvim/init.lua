-- CONFIG 
local set = vim.opt

set.tabstop = 4
set.shiftwidth = 0
set.expandtab = true





-- STATUS LINE
local fn = vim.fn
local api = vim.api

vim.o.showmode = false
vim.o.ruler = false

vim.cmd "hi StatusLeft ctermbg=black ctermfg=white"
vim.cmd "hi StatusRight ctermbg=black ctermfg=white"

local modes = {
	['n'] = 'N',
	['no'] = 'N',
	['v'] = 'V',
	['V'] = 'V-',
	[''] = 'V[]',
	['s'] = 'S',
	['S'] = 'S-',
	[''] = 'S[]',
	['i'] = 'I',
	['ic'] = 'I',
	['R'] = 'R',
	['Rv'] = 'RV',
	['c'] = ' ',
	['cv'] = 'VIX',
	['ce'] = 'X',
	['r'] = '>',
	['rm'] = 'M',
	['r?'] = '?',
	['!'] = 'SH',
	['t'] = 'T',
}

local function mode()
	local current_mode = api.nvim_get_mode().mode
	return string.format(" %s ", modes[current_mode]):upper()
end

local function filepath()
	local fpath = fn.fnamemodify(fn.expand "%", ":~:.:h:")
	if fpath == "" or fpath == "." then
		return " "
	end

	return string.format(" %%<%s/", fpath)
end

local function filename()
	local fname = fn.expand "%:t"
	if fname == "" then
		return " "
	end
	return fname .. " "
end

local function lineinfo()
	if vim.bo.filetype == "alpha" then
		return ""
	end
	return "%l:%c %p " 
end

local function is_modified()
	if vim.bo.modified then
		if vim.bo.readonly then
			return "-"
		end
		return "+"
	end
	return ""
end

local function is_readonly()
	if vim.bo.readonly then
		return "-r-"
	end
	return ""
end

function status_line()
    return table.concat {
        "%#StatusLeft#",
	mode(),
	is_readonly(),
	filepath(),
	filename(),
	is_modified(),
        "%=",
        "%#StatusMid#",
        "%#StatusRight#",
	lineinfo(),
       	-- "%=",
    }
end

vim.o.statusline = "%!luaeval('status_line()')"
