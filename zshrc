# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob notify
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/magum/.zshrc'

#bindkey -v
#bindkey "^P" vi-up-line-or-history
#bindkey "^N" vi-down-line-or-history
#
#bindkey "^[[1~" vi-beginning-of-line   # Home
#bindkey "^[[4~" vi-end-of-line         # End
#bindkey '^[[2~' beep                   # Insert
#bindkey '^[[3~' delete-char            # Del
#bindkey '^[[5~' vi-backward-blank-word # Page Up
#bindkey '^[[6~' vi-forward-blank-word  # Page Down
autoload -Uz compinit
compinit
# End of lines added by compinstall
export PYTHONSTARTUP=~/.pythonrc
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
alias -s tex=vim
alias -s pl=vim
alias -s txt=vim

if [ -e ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi
