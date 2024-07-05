if status is-interactive
    set fish_greeting
    fish_config theme choose "Catppuccin Mocha"
    starship init fish | source
    zoxide init fish | source
end
