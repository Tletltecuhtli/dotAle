set nocompatible
syntax enable
filetype plugin on
let mapleader =","
set encoding=utf-8
set number relativenumber " números a la izquierda con su relativo de distancia
set wildmode=longest,list,full " permitir tab auto completar en modo comando :
" revisión de ortografía en español
map <leader>o :setlocal spell! spelllang=es_mx<CR>
set splitbelow splitright " cambiar orientaciones de split a cosas mas razonables
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " deshabilitar seguir comentario en nueva linea
" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
set tabstop=4 " boton <tab> da 4 espacios (estandar) en lugar de 8


" <<Quickbits>>
" saltar a la siguiente marca <++> con doble espacio
noremap <Space><Space> <Esc>/<++><Enter>"_c4l

"########################
"##        HTML        ##
"########################

" --------Normal---------
" Escribir un basic.html
noremap <leader>h i<!DOCTYPE html><Enter><!-- whitespace.html --><Enter><html lang="es"><Enter><head><Enter><Tab><meta charset="UTF-8" /><Enter><Tab><title></title><Enter></head><Enter><body><Enter><Tab><++><Enter></body><Enter></html><Esc>5k^/\/<Enter>T>i

" -------Insertar--------
" Empezar a escribir en italica
autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
