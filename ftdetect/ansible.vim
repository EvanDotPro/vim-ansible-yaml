" Determine if normal YAML or Ansible YAML
" Language:         YAML (with Ansible)
" Maintainer:       Chase Colman <chase@colman.io>
" Latest Revision:  2013-12-09

fun! s:SetupAnsible()
  set filetype=ansible
  set comments=:#
  set commentstring=#\ %s
endfun

fun! s:SelectAnsible()
  let fp = expand("%:p")
  let dir = expand("%:p:h")
  call s:SetupAnsible()
  return
endfun
autocmd BufNewFile,BufRead *.yml  call s:SelectAnsible()
