sc() {
  if [ -e script/rails ]; then
    ruby script/rails c $*
  elif [ -e script/console ]; then
    ruby script/console $*
  else;
    echo "Not in a Rails project"
  fi
}
ss() {
  if [ -e script/rails ]; then
    ruby script/rails server $*
  elif [ -e script/console ]; then
    ruby script/server $*
  else;
    echo "Not in a Rails project"
  fi
}

alias r="ruby script/rails"
alias rp="touch tmp/restart.txt"
alias pow="powder"
alias op='pow open'
