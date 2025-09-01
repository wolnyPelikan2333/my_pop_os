#if status is-interactive
# Commands to run in interactive sessions can go here

### AUTOCOMPLETE AND HIGHLIGHT COLORS ###
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

### ALIASES ###
# navigation
alias cdl='cd && ll'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias com='command -v '
alias dpkg='sudo dpkg -i '
alias nala='sudo nala install'
alias apt='sudo apt install'
alias apup='sudo apt update'
alias apug='sudo apt upgrade'
alias apuu='sudo apt update && sudo apt upgrade -y '
alias apfu='sudo apt full-upgrade'
alias ps='ps aux | fzf'
alias cpu5='ps auxf | sort -nr -k 3 | head -5'
alias cpu10='ps auxf | sort -nr -k 3 | head -10'
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias mem10='ps auxf | sort -nr -k 4 | head -10'
alias extip='curl icanhazip.com'
alias weather='curl wttr.in'
alias apin='sudo apt install'
alias apri='sudo apt install --reinstall'
alias fk='fuck'
alias vim='nvim'
alias aprm='sudo apt remove'
alias apur='sudo apt purge'
alias apar='sudo apt autoremove'
alias apcl='sudo apt-get autoclean'
alias apse='apt search'
alias apsh='apt show'
alias apsc='apt-get source'
alias apesr='sudo apt edit-sources'
alias apdl='apt-get download'
alias snap='sudo snap install'
alias apbd='sudo apt build-deb'
alias aphst='cat /var/log/apt/history.log | less'
alias drcf='sudo dpkg-reconfigure'
alias upgrb='sudo update-grub'
alias uirfs='sudo update-initramfs -u'
alias copy="cp"
alias rename="mv"
alias md="mkdir"
alias rd="rmdir"
alias del="rm -i"
alias dels='sudo rm -rf'
# Changing "ls" to "exa"

alias t='exa -alh --tree'
alias l='exa -alh --color=always --group-directories-first' # my preferred listing
alias l.='exa -alh | egrep "^\."'
alias l.='exa -alh --color=always --group-directories-first ../' # ls on the PARENT directory
alias l..='exa -alh --color=always --group-directories-first ../../' # ls on directory 2 levels up
alias l...='exa -alh --color=always --group-directories-first ../../../' # ls on directory 3 levels up
alias ls='ls -latr'
# adding flags
alias df='df -h' # human-readable sizes
alias free='free -m' # show sizes in MB
alias grep='grep --color=auto' # colorize output (good for log files)

# git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'

### SETTING THE STARSHIP PROMPT ###
#starship init fish | source

### FZF ###
fzf --fish | source

### ZOXIDE ###
zoxide init fish | source

### ATUIN ###
atuin init fish | source

###EXPORT PATH###
export PATH="/Skrypty:$PATH"

fish_vi_key_bindings

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
