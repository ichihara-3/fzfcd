function fzfcd {
  target=$1
  if [ -z ${target} ]; then
    target=$(find . -type d| sed '/\.git/d' |fzf)
  fi
  cd ${target}
}

alias ${MYCD:=zd}=fzfcd
