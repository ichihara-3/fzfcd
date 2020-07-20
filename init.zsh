function mycd {
  target=$1
  if [ -z target ]; then
    target=$(find . -type d|fzf)
  fi
  cd ${target}
}

alias ${MYCD:=zd}=mycd
