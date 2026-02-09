function pull-sb --wraps='mise exec node@24 -- "$(git rev-parse --show-toplevel)/frontends/types/storyblok-management/pull-sb-components.sh"' --description 'alias pull-sb=mise exec node@24 -- "$(git rev-parse --show-toplevel)/frontends/types/storyblok-management/pull-sb-components.sh"'
    mise exec node@24 -- "$(git rev-parse --show-toplevel)/frontends/types/storyblok-management/pull-sb-components.sh" $argv
end
