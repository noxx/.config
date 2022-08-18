vim.g.material_style = "deep ocean"
local colors = require('material.colors')


vim.cmd([[

" toggles themes of materia.nvim on ":ToggleMaterialTheme"
command ToggleMaterialTheme :lua require('material.functions').toggle_style()<CR>

]])


--vim.g.material_style = "deep ocean"
require('material').setup({
	contrast = {
	},

	italics = {
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
	},

	disable = {
		colored_cursor = false, -- Disable the colored cursor
		borders = false, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    -- Overwrite highlights with your own
    custom_highlights = {
        TabLineFill =	{ fg = '#ff0000', bg = '#ff0000' },
        Comment = { fg = colors.green}
    }
})
