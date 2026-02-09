function cdtypes --wraps='cd "$(git rev-parse --show-toplevel)/frontends/types"' --description 'alias cdtypes=cd "$(git rev-parse --show-toplevel)/frontends/types"'
    cd "$(git rev-parse --show-toplevel)/frontends/types" $argv
end
