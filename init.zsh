function fzfcd {
  target=$1
  fzfargs=${@:3}
  if [ -z ${target} ]; then
    target="."
  fi
  moveto=$(find ${target} -maxdepth ${maxdepth:=4} -type d  | sed '/\.git/d' |fzf --select-1 --exit-0 ${fzfargs} )
  if [ ${moveto} ]; then
    cd ${moveto}
  fi
}

compdef '_files -/' 'fzfcd'

alias ${MYCD:=zd}=fzfcd
