alias ntb='jupyter notebook --browser=vivaldi'

alias comp='docker-compose'
alias vc-up='cd ~/code/valuechecker;docker-compose up'
alias vc-down='cd ~/code/valuechecker;docker-compose down'

alias e='emacs'
alias enw='emacs -nw'
alias ec='emacsclient'
alias ect='emacsclient -t'
alias eccn='emacsclient -c -n'
alias eccnf='emacsclient -c -n -f'

alias h='history'
alias j='jobs -l'
alias hgr='history | grep'
alias psgr='ps -eo pid,time,user,args --sort user | grep'

alias c='clear'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias la='ls -la --group-directories-first --time-style=+"%Y-%m-%d %H:%M" --color=auto -F'
alias ll='ls -l --group-directories-first --time-style=+"%Y-%m-%d %H:%M" --color=auto -F'
alias ls='ls --color=auto'

alias t='alacritty --working-directory `pwd`&'

alias setup-py2='conda activate py2'

alias logs-matchingv1='ssh -t alasudo@matching901.office.alatest.se "less +F /var/log/matching/matching_full.log"'
alias logs-matchingv2='ssh -t alasudo@matching902.office.alatest.se "less +F /var/log/matching_v2/matching_v2_log"'
alias black79='black -l 79 -t py38'

alias killvaldi='killall vivaldi-bin'

alias mansplain='man'

alias gti='echo "Vroom! Vroom!"; git'