" FZF keymaps (requires Plug 'junegunn/fzf.vim')

" Files
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fo :History<CR>
nnoremap <leader>fb :Buffers<CR>

" Grep current string
nnoremap <leader>fs :Rg <C-r><C-w><CR>

" Grep input string (fzf prompt)
nnoremap <leader>fg :Rg<Space>
