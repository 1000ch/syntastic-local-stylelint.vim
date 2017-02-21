" backup local cwd
" and change it to the directory of the current file
let s:lcd = fnameescape(getcwd())
silent! exec "lcd" expand('%:p:h')

" detect shell and choose the command to find the stylelint executable
if &shell =~# 'fish'
  let s:which_cmd = 'begin; set -lx PATH (npm bin --silent) $PATH; and which stylelint; end'
else
  let s:which_cmd = 'PATH=$(npm bin --silent):$PATH && which stylelint'
endif

" get the path of the stylelint executable
" and set it as a checker for the current buffer
let s:stylelint_path = system(s:which_cmd)
let b:syntastic_css_stylelint_exec = substitute(s:stylelint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
