inoremap <C-@> \
setlocal spell
set spelllang=es

setlocal tabstop=2
setlocal shiftwidth=2

" inoremap & \&
" inoremap $ \$
" inoremap % \%
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

imap <c-c> <f7>
vmap Sn SBi\textbf<Esc>
vmap Si SBi\textit<Esc>
vmap Su SBi\ul<Esc>

" nmap gs [sei<c-x>s
nmap gs [sz=
nmap gss ]sz=
" nmap gs [sei<c-X><c-s>
" nmap gss gi<Esc>

inoremap <expr> <C-k>      pumvisible() ? "\<C-y><Esc>" : "\<CR>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y><cr>" : "\<CR>"
