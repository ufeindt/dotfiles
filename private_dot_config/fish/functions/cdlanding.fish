function cdlanding --wraps='cd "$(git rev-parse --show-toplevel)/frontends/turborepo/apps/solo-landing"' --description 'alias cdlanding=cd "$(git rev-parse --show-toplevel)/frontends/turborepo/apps/solo-landing"'
    cd "$(git rev-parse --show-toplevel)/frontends/turborepo/apps/solo-landing" $argv
end
