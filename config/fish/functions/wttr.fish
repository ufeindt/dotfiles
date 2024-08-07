function wttr --wraps=wttr.in --wraps='curl wttr.in' --description 'alias wttr curl wttr.in'
  curl wttr.in $argv
        
end
