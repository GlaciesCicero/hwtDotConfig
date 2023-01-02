-- ===
-- === Global
-- ===
vim.opt.linebreak=true
vim.opt.relativenumber=true
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.showcmd=true
vim.opt.tabstop=4
vim.opt.shiftwidth=4

-- ===
-- === Markdown
-- ===
vim.cmd [[
"autocmd Filetype markdown map <leader>w yiWi[<esc>Ea](<esc>pa)
autocmd Filetype markdown inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
inoremap ,f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,6 ######<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,l --------<Enter>let g:mkdp_page_title = '「${name}」'

autocmd Filetype markdown,tex,latex noremap <buffer> j gj
autocmd Filetype markdown,tex,latex noremap <buffer> k gk
autocmd Filetype markdown,tex,latex noremap <buffer> gj j
autocmd Filetype markdown,tex,latex noremap <buffer> gk k
let g:vim_markdown_folding_disabled = 1
]]
