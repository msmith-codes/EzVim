local config = require("config")

-- Sets the default color mode and theme
vim.o.background = config.color_mode
vim.cmd("colorscheme " .. config.color_theme)

vim.api.nvim_create_user_command("ToggleColorMode",
    function()
        if vim.o.background == "dark" then
            vim.o.background = "light"
        else
            vim.o.background = "dark"
        end
    end,
    { nargs = 0 }
)

vim.api.nvim_create_user_command("SetColorTheme",
    function(details)
        local args = details.fargs
        vim.cmd("colorscheme " .. args[1])
    end,
    { nargs = 1 }
)

