function fzfcd {
  target=$1
  if [ -z ${target} ]; then
    target="."
  fi
  moveto=$(find ${target} -type d| sed '/\.git/d' |fzf)
  cd ${moveto}
}

alias ${MYCD:=zd}=fzfcd
