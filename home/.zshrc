TERM=xterm-256color

export ZSH="/root/.oh-my-zsh"

ZSH_THEME="minimal"

CASE_SENSITIVE="true"

# HYPHEN_INSENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

# DISABLE_UPDATE_PROMPT="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_MAGIC_FUNCTIONS=true

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="dd/mm/yyyy"

plugins=(
command-not-found
common-aliases
encode64
extract
history
pj
tmux
)

setopt NO_BG_NICE

source $ZSH/oh-my-zsh.sh
source $HOME/.gf/gf-completion.zsh
source <(antibody init) &>/dev/null
antibody bundle < ~/.zsh_plugins &>/dev/null

if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH:/usr/share/doc/python3-impacket/examples/"
fi
export PATH

alias install='apt-get update && apt-get install $@'
alias burpsuite='java -jar -Xmx4G /usr/bin/burpsuite &'
alias chromium='chromium --no-sandbox &'
alias firefox='firefox &'
alias msfconsole='service postgresql start && /usr/bin/msfconsole'
alias hosts='nano /etc/hosts'
alias zapproxy='zapproxy &'
alias ghidra='java -jar /usr/share/ghidra.jar -gui &'
