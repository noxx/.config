vim.cmd([[

set tabstop=4
set shiftwidth=4
set expandtab 
set number                     " Show current line number
set noswapfile
colorscheme pywal

"mappings for window switching
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

"mappings for buffer switching

"goes to next buffer on shift+tab
noremap <tab> :bnext<CR>

"goes to previous buffer on shift+tab
noremap <S-tab> :bprevious<CR>

"toggles buffers
noremap <A-tab> :b#<CR>

"deletes curr buffer on ctrl+w
noremap <C-w> :bdelete<Cr> 

"opens vifm.vim
noremap <C-t> :Vifm . .. <Cr> 

"open veritical split in new window
noremap <C-n> :vert sb#<Cr>








augroup filetypedetect
    au BufRead,BufNewFile *.txt setfiletype conf 
    " associate .txt files with conf files so
    " commments are possible in txt files with  "#"
augroup END
]])
