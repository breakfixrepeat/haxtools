source ~/.config/antigen.zsh

antigen use oh-my-zsh

antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle encode64
antigen bundle extract
antigen bundle git
antigen bundle history
antigen bundle pj
antigen bundle tmux
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme minimal

antigen apply

setopt NO_BG_NICE

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#626262"

source $HOME/.gf/gf-completion.zsh

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
