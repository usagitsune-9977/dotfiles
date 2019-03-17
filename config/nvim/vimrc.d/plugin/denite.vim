""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Option
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Show denite window above
" call denite#custom#option('default', {'direction': 'aboveleft'})

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Select a candidate with ctrl-n, ctrl-p
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<Down>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<Up>', '<denite:move_to_previous_line>', 'noremap')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sources
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" File
call denite#custom#alias('source', 'file_rec/git', 'file_rec')
call denite#custom#var('file_rec/git', 'command', ['git', 'ls-files', '-co', '--exclude-standard'])
nnoremap <silent> <space>df :<C-u>Denite file_rec/git<CR>

call denite#custom#var('file_rec', 'command', ['rg', '--files', '-uuu'])
nnoremap <silent> <space>dF :<C-u>Denite file_rec<CR>

" Buffer
nnoremap <silent> <space>db :<C-u>Denite buffer<CR>

" Directory
nnoremap <silent> <space>dd :<C-u>Denite directory_rec<CR>

" Line
nnoremap <silent> <space>dl :<C-u>Denite line<CR>

" Jump
nnoremap <silent> <space>dj :<C-u>Denite jump<CR>

" Tag
nnoremap <silent> <space>dt :<C-u>Denite tag<CR>

" Grep
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'default_opts', ['--follow', '--no-group', '--no-color'])
" call denite#custom#var('grep', 'command', ['rg'])
" call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])
nnoremap <silent> <space>ds :<C-u>Denite grep<CR>
nnoremap <silent> <space>dsw :<C-u>DeniteCursorWord grep<CR>

" Command
nnoremap <silent> <space>dc :<C-u>Denite command<CR>
nnoremap <silent> <space>dch :<C-u>Denite command_history<CR>

" Help
nnoremap <silent> <space>dh :<C-u>Denite help<CR>

" Git
" nnoremap <silent> <space>dgb :<C-u>Denite gitbranch<CR>
" nnoremap <silent> <space>dgc :<C-u>Denite gitchanged<CR>
" nnoremap <silent> <space>dgl :<C-u>Denite gitlog<CR>
" nnoremap <silent> <space>dgs :<C-u>Denite gitstatus<CR>

" Location list
nnoremap <silent> <space>dL :<C-u>Denite location_list<CR>

" Quickfix
nnoremap <silent> <space>dq :<C-u>Denite quickfix<CR>
