function reload -d "Reload the Fish shell"
  history --save
  set -gx dirprev $dirprev
  set -gx dirnext $dirnext
  set -gx dirstack $dirstack
  set -gx fish_greeting ''

  exec fish
end
