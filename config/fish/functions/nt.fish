function nt --wraps='kitty @ launch --type=tab --cwd last_reported distrobox enter $CONTAINER_ID' --description 'alias nt kitty @ launch --type=tab --cwd last_reported distrobox enter $CONTAINER_ID'
  kitty @ launch --type=tab --cwd last_reported distrobox enter $CONTAINER_ID $argv
        
end
