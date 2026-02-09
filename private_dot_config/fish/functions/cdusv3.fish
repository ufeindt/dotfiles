function cdusv3 --wraps='cd "$(git rev-parse --show-toplevel)/frontends/usv3"' --description 'alias cdusv3=cd "$(git rev-parse --show-toplevel)/frontends/usv3"'
    cd "$(git rev-parse --show-toplevel)/frontends/usv3" $argv
end
