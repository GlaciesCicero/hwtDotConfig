-- Additional Plugins
-- it is just a packer
lvim.plugins = {
    {
        "folke/trouble.nvim",
        cmd = "TroubleToggle",
    },
    -- hwt's plugins starts here
    --markdown
    -- install without yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    },
    { "junegunn/goyo.vim" },
    {"amix/vim-zenroom2"},
    {"tpope/vim-surround"},

    --taskpaper
    { "davidoc/taskpaper.vim" },
    --matlab
    { "daeyun/vim-matlab" },
    --legder
    { "ledger/vim-ledger" },
    {"anekos/hledger-vim"},
    {"edlanglois/vim-hledger-syntax"},
    -- markdown
    { "godlygeek/tabular" },
    { "preservim/vim-markdown" },
    -- theme
    { "rebelot/kanagawa.nvim" },
    {"phanviet/vim-monokai-pro"},
    -- latex
    {
        "iurimateus/luasnip-latex-snippets.nvim",
        -- replace "lervag/vimtex" with "nvim-treesitter/nvim-treesitter" if you're
        -- using treesitter.
        requires = { "L3MON4D3/LuaSnip", "nvim-treesitter/nvim-treesitter" },
        config = function()
            require 'luasnip-latex-snippets'.setup()
            -- or setup({ use_treesitter = true })
        end,
        ft = "tex",
    },
    { 
        'frazrepo/vim-rainbow',
        vim.cmd [[let g:rainbow_active = 1]]
    },
    {
        "phaazon/hop.nvim",
        event = "BufRead",
        config = function()
            require("hop").setup()
            vim.api.nvim_set_keymap("n", "S", ":HopChar2<cr>", { silent = true })
            vim.api.nvim_set_keymap("n", "s", ":HopWord<cr>", { silent = true })
        end,
    },
    {
        "nacro90/numb.nvim",
        event = "BufRead",
        config = function()
            require("numb").setup {
                show_numbers = true, -- Enable 'number' for the window while peeking
                show_cursorline = true, -- Enable 'cursorline' for the window while peeking
            }
        end,
    },
    {
        "andymass/vim-matchup",
        event = "CursorMoved",
        config = function()
            vim.g.matchup_matchparen_offscreen = { method = "popup" }
        end,
    },
    {
        "kevinhwang91/nvim-bqf",
        event = { "BufRead", "BufNew" },
        config = function()
            require("bqf").setup({
                auto_enable = true,
                preview = {
                    win_height = 12,
                    win_vheight = 12,
                    delay_syntax = 80,
                    border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
                },
                func_map = {
                    vsplit = "",
                    ptogglemode = "z,",
                    stoggleup = "",
                },
                filter = {
                    fzf = {
                        action_for = { ["ctrl-s"] = "split" },
                        extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
                    },
                },
            })
        end,
    },
}
