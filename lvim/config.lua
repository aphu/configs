-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true
vim.opt.scrolloff = 50
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

lvim.plugins = {
    {
        "navarasu/onedark.nvim",
        config = function()
        require("onedark").setup {
          style = "dark"
        }

        require("onedark").load()
      end
    },
    {
        "fei6409/log-highlight.nvim",
        config = function()
            require("log-highlight").setup {}
        end
    },
    {
        "mcauley-penney/tidy.nvim",
        opts = {
            enabled_on_save = false
        },
        init = function()
            vim.keymap.set("n", "<leader>tt", require("tidy").run, {})
            vim.keymap.set("n", "<leader>tr", require("tidy").toggle, {})
        end
    },
    {
        "nacro90/numb.nvim",
        config = function()
            require("numb").setup {}
        end
    }
}

lvim.colorscheme = "onedark"

lvim.builtin.nvimtree.setup.view.width = 75
