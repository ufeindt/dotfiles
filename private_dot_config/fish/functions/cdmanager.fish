function cdmanager --wraps='cd "$(git rev-parse --show-toplevel)/frontends/manager"' --description 'alias cdmanager=cd "$(git rev-parse --show-toplevel)/frontends/manager"'
    cd "$(git rev-parse --show-toplevel)/frontends/manager" $argv
end
