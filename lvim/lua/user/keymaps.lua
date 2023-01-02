local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "5h", opts)
keymap("n", "<C-j>", "5j", opts)
keymap("n", "<C-k>", "5k", opts)
keymap("n", "<C-l>", "5l", opts)

-- Resize with arrows
-- keymap("n", "<Up>", ":resize -2<CR>", opts)
-- keymap("n", "<Down>", ":resize +2<CR>", opts)
-- keymap("n", "<Left>", ":vertical resize -2<CR>", opts)
-- keymap("n", "<Right>", ":vertical resize +2<CR>", opts)

keymap('n', '<left>', ':tabp<CR>', opts)
keymap('n', '<right>', ':tabn<CR>', opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- keymap("n", "S", ":w<CR>", opts)
-- keymap('n', 'Q', ':q<CR>', opts)

keymap('n', 'E', '$', opts)
keymap('n', 'B', '0', opts)

keymap('n', 'sl', ':vsp<CR> <C-w>l', opts)
keymap('n', 'sh', ':vsp<CR> <C-w>h', opts)

keymap('n', '<LEADER><LEADER>l', '<C-w>l', opts)
keymap('n', '<LEADER><LEADER>k', '<C-w>k', opts)
keymap('n', '<LEADER><LEADER>j', '<C-w>j', opts)
keymap('n', '<LEADER><LEADER>h', '<C-w>h', opts)



keymap('n', 'J', '5j', opts)
-- keymap('n', 'K', '5k', opts)
keymap('n', 'L', '5l', opts)
keymap('n', 'H', '5h', opts)
keymap('n', '=', 'nzz', opts)
keymap('n', '-', 'Nzz', opts)
keymap('n', '<LEADER><CR>', ':nohlsearch<CR>', opts)
-- keymap('n', 'B', '5b', opts)
-- keymap('n', 'W', '5w', opts)
keymap('n', 'A', 'ggVG', opts)


-- ===
-- ===Moving cursor
-- ===
keymap('n', '[;a', 'k',opts)
keymap('n', '[;s', '2k',opts)
keymap('n', '[;d', '3k',opts)
keymap('n', '[;f', '4k',opts)
keymap('n', '[;g', '5k',opts)
keymap('n', '[;h', '6k',opts)
keymap('n', '[;j', '7k',opts)
keymap('n', '[;k', '8k',opts)
keymap('n', '[;l', '9k',opts)
keymap('n', '[;a;', '10k',opts)
keymap('n', '[aa', '11k',opts)
keymap('n', '[as', '12k',opts)
keymap('n', '[ad', '13k',opts)
keymap('n', '[af', '14k',opts)
keymap('n', '[ag', '15k',opts)
keymap('n', '[ah', '16k',opts)
keymap('n', '[aj', '17k',opts)
keymap('n', '[ak', '18k',opts)
keymap('n', '[al', '19k',opts)
keymap('n', '[s;', '20k',opts)
keymap('n', '[sa', '21k',opts)
keymap('n', '[ss', '22k',opts)
keymap('n', '[sd', '23k',opts)
keymap('n', '[sf', '24k',opts)
keymap('n', '[sg', '25k',opts)
keymap('n', '[sh', '26k',opts)
keymap('n', '[sj', '27k',opts)
keymap('n', '[sk', '28k',opts)
keymap('n', '[sl', '29k',opts)
keymap('n', '[d;', '30k',opts)
keymap('n', '[da', '31k',opts)
keymap('n', '[ds', '32k',opts)
keymap('n', '[dd', '33k',opts)
keymap('n', '[df', '34k',opts)
keymap('n', '[dg', '35k',opts)
keymap('n', '[dh', '36k',opts)
keymap('n', '[dj', '37k',opts)
keymap('n', '[dk', '38k',opts)
keymap('n', '[dl', '39k',opts)
keymap('n', '[d;', '40k',opts)
keymap('n', '[fa', '41k',opts)
keymap('n', '[fs', '42k',opts)
keymap('n', '[fd', '43k',opts)
keymap('n', '[ff', '44k',opts)
keymap('n', '[fg', '45k',opts)
keymap('n', '[fh', '46k',opts)
keymap('n', '[fj', '47k',opts)
keymap('n', '[fk', '48k',opts)
keymap('n', '[fl', '49k',opts)
keymap('n', '[f;', '50k',opts)

keymap('n', '\';a', 'j',opts)
keymap('n', '\';s', '2j',opts)
keymap('n', '\';d', '3j',opts)
keymap('n', '\';f', '4j',opts)
keymap('n', '\';g', '5j',opts)
keymap('n', '\';h', '6j',opts)
keymap('n', '\';j', '7j',opts)
keymap('n', '\';k', '8j',opts)
keymap('n', '\';l', '9j',opts)
keymap('n', '\';a;', '10j',opts)
keymap('n', '\'aa', '11j',opts)
keymap('n', '\'as', '12j',opts)
keymap('n', '\'ad', '13j',opts)
keymap('n', '\'af', '14j',opts)
keymap('n', '\'ag', '15j',opts)
keymap('n', '\'ah', '16j',opts)
keymap('n', '\'aj', '17j',opts)
keymap('n', '\'ak', '18j',opts)
keymap('n', '\'al', '19j',opts)
keymap('n', '\'s;', '20j',opts)
keymap('n', '\'sa', '21j',opts)
keymap('n', '\'ss', '22j',opts)
keymap('n', '\'sd', '23j',opts)
keymap('n', '\'sf', '24j',opts)
keymap('n', '\'sg', '25j',opts)
keymap('n', '\'sh', '26j',opts)
keymap('n', '\'sj', '27j',opts)
keymap('n', '\'sk', '28j',opts)
keymap('n', '\'sl', '29j',opts)
keymap('n', '\'d;', '30j',opts)
keymap('n', '\'da', '31j',opts)
keymap('n', '\'ds', '32j',opts)
keymap('n', '\'dd', '33j',opts)
keymap('n', '\'df', '34j',opts)
keymap('n', '\'dg', '35j',opts)
keymap('n', '\'dh', '36j',opts)
keymap('n', '\'dj', '37j',opts)
keymap('n', '\'dk', '38j',opts)
keymap('n', '\'dl', '39j',opts)
keymap('n', '\'d;', '40j',opts)
keymap('n', '\'fa', '41j',opts)
keymap('n', '\'fs', '42j',opts)
keymap('n', '\'fd', '43j',opts)
keymap('n', '\'ff', '44j',opts)
keymap('n', '\'fg', '45j',opts)
keymap('n', '\'fh', '46j',opts)
keymap('n', '\'fj', '47j',opts)
keymap('n', '\'fk', '48j',opts)
keymap('n', '\'fl', '49j',opts)
keymap('n', '\'f;', '50j',opts)

-- press R to compile
vim.cmd [[
" Compile function
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		set splitbelow
		:sp
		:res -5
		term gcc % -o %< && time ./%<
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
	elseif &filetype == 'cs'
		set splitbelow
		silent! exec "!mcs %"
		:sp
		:res -5
		:term mono %<.exe
	elseif &filetype == 'java'
		set splitbelow
		:sp
		:res -5
		term javac % && time java %<
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'dart'
		exec "CocCommand flutter.run -d ".g:flutter_default_device." ".g:flutter_run_args
		silent! exec "CocCommand flutter.dev.openDevLog"
	elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'racket'
		set splitbelow
		:sp
		:res -5
		term racket %
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
	endif
endfunc
]]



