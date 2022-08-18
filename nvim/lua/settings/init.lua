vim.cmd([[
set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set number                     " Show current line number
set noswapfile
"colorscheme pywal
"let g:material_style = "deep ocean"
"colorscheme material
set mouse=a
set sessionoptions+=globals    " good for storing buffer order bufferline.nvim



augroup filetypedetect
    au BufRead,BufNewFile *.txt setfiletype conf 
    " associate .txt files with conf files so
    " commments are possible in txt files with  "#"
augroup END


"commands

"inserts date into file qhen typing date

command Date execute "put =strftime('%d %B %Y')"


" mappings for window switching
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

"deletes curr buffer on ctrl+w
"noremap <C-w> :bdelete<Cr>
nnoremap <C-w> :bp<cr>:bd #<cr> " smart way around closing buffer without problems


noremap <leader>n :NvimTreeToggle<Cr>

]])
