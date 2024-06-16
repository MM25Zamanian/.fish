# General
alias clear "clear && fish_gecut_logo"
alias c clear

# Docker
alias d docker
alias dc docker-compose
alias dps "docker ps --format 'table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}'"
alias dtop "docker ps --format '{{.Names}}' | xargs docker stats $1"
alias dclog "dc logs -f --tail"

# General Tools
alias g git
alias n nano
alias y yarn
alias p ping

# Node & Yarn
alias ni "npm install"
alias nid "npm install -g"
alias nyi "yarn install"
alias nyid "yarn global add"

# Pings
alias pg "ping 8.8.8.8"
alias pc "ping 1.1.1.1"

# File System
alias rm "rm -i"
alias hs "cd ~/ && ls"
alias up "cd .."
alias home "cd ~/"
alias root "sudo su"
alias mkdir "mkdir -pv"
alias hist history
alias jobs "jobs -l"

# Power commands
alias shutdown "sudo shutdown -P now"
alias reboot "sudo shutdown -r now"

# Grep shorthands
alias grep "grep --color=auto"

# ls shorthands
alias ls "ls -C --color=auto"
alias lm "ls -lhA --color=auto | more"
alias ll "ls -lh --color=auto"
alias la "ls -lhA --color=auto"
alias lar "ls -lhAR --color=auto | more"
alias lcr "ls -CAR --color=auto | more"

# Time
alias now "date +%T"
alias nowtime now
alias nowdate "date +\"%d-%m-%Y\""

# Networking
alias ports "netstat -tulanp"

# Updates
alias update "sudo dnf -y check-update && sudo dnf -y upgrade"

function ci
  code-insiders $argv
end

function g-aa
  git add .
end

function g-c
  git commit -m $argv
end

function g-s
  git status -s
end

function g-log-all
  git log --all --graph --decorate --oneline
end

function g-c
  git checkout $argv
end
