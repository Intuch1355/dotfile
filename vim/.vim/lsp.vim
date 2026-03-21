" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)
let lspServers = [
      \ #{
      \   name: 'clangd',
      \   filetype: ['c', 'cpp'],
      \   path: 'clangd',
      \   args: []
      \ }
      \ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>

" Set omnifunc for completion
autocmd FileType c,cpp setlocal omnifunc=lsp#complete
