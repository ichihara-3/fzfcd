function fzfcd {
  target=$1
  fzfargs=${@:3}
  if [ -z ${target} ]; then
    target="."
  fi
  moveto=$(find ${target} -type d -maxdepth ${maxdepth:=4} | sed '/\.git/d' |fzf --select-1 --exit-0 ${fzfargs} )
  cd ${moveto}
}

compdef '_files -/' 'fzfcd'

alias ${MYCD:=zd}=fzfcd
