# fortemente inspirado pelo Luke Smith rs
# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/paulo/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# End of lines added by compinstall
#

# vi mode
bindkey -v
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# edit line in vim
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# setting up VCS
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}%b%r%f'
zstyle ':vsc_info:*' enable git

autoload -U colors && colors

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

alias ls='ls --color'
alias search="apt-cache search"
export EDITOR=nvim
alias vim=nvim

alias python=python3
alias ipython=ipython3
alias pip=pip3
alias rr=ranger
alias suspend="systemctl suspend"
alias bat=batcat

export hdd1="/media/paulo/HDD_1/"
export hdd2="/media/paulo/HDD_2/"

export PATH=$PATH:/home/paulo/.bin/:/home/paulo/.local/bin/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/paulo/.config/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/paulo/.config/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/paulo/.config/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/paulo/.config/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Install Ruby Gems to ~/.config/gems
export GEM_HOME="$HOME/.config/gems"
export PATH="$HOME/.config/gems/bin:$PATH"

export PATH="${PATH}:${HOME}/.local/bin/"
export PATH="/home/paulo/.config/gems/bin:$PATH"

export PATH="/home/paulo/.cargo/bin/:$PATH"
# cat ~/.cache/wal/sequences

export NOTEDIR=/media/paulo/HDD_1/syncthing/bridge/obsidian/zettel/zettelkasten/organizar/

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
