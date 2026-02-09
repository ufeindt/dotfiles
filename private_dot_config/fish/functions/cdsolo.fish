function cdsolo --wraps='cd "$(git rev-parse --show-toplevel)/frontends/usv3"' --description 'alias cdsolo=cd "$(git rev-parse --show-toplevel)/frontends/usv3"'
    cd "$(git rev-parse --show-toplevel)/frontends/usv3" $argv
end
