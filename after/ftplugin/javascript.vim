" call deoplete#custom#var('omni', 'input_patterns', {
" \ 'javascript': '[^. *\t]\.\w*',
" \ })


autocmd BufReadPost,BufWritePost *.js :Neomake
