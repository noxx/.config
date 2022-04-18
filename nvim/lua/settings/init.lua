vim.cmd([[

set tabstop=4
set shiftwidth=4
set expandtab 
set number                     " Show current line number
"set termguicolors
"colorscheme xresources
colorscheme pywal


augroup filetypedetect
    au BufRead,BufNewFile *.txt setfiletype conf 
    " associate .txt files with conf files so
    " commments are possible in txt files with  "#"
augroup END
]])
