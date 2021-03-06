compiler ruby

setlocal wildignore+=*/coverage/*,*/doc/*,*/pkg/*

if isdirectory('app')
  " probably rails
  let b:ctags_command = 'ctags -R app lib vendor'
elseif isdirectory('lib')
  " normal rails project
  let b:ctags_command = 'ctags -R lib'
endif

setlocal shiftwidth=2
setlocal softtabstop=2
setlocal tabstop=2
