" Thanks: Randy Morris <randy.morris@archlinux.us>

setlocal shiftwidth=4
setlocal completefunc=pythoncomplete#Complete

let python_fold                   = 1
let python_highlight_all          = 1
let python_highlight_exceptions   = 1
let python_highlight_space_errors = 1
let python_highlight_builtins     = 1

" Enable jumping to imports with gf
python << EOF
import os
import sys
import vim
for p in sys.path:
  if os.path.isdir(p):
    vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
EOF
