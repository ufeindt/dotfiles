function cdsoloweb --wraps='cd "$(git rev-parse --show-toplevel)/frontends/turborepo/apps/solo-website"' --description 'alias cdsoloweb=cd "$(git rev-parse --show-toplevel)/frontends/turborepo/apps/solo-website"'
    cd "$(git rev-parse --show-toplevel)/frontends/turborepo/apps/solo-website" $argv
end
