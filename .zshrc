# Color scheme
autoload -U colors && colors
# Custom function to get Git branch information
function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo '- ('$branch')'
  fi
}
 
# Enable substitution in the prompt.
setopt prompt_subst

# Tab completion
autoload -Uz compinit
compinit

# Command history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY

# Vim settings
export VISUAL=vim
export EDITOR="$VISUAL"

# VS Code settings (add VS Code to your PATH if not already)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Common aliases
alias c='clear'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gco='git checkout'
alias vi='vim'

prompt='%F{cyan}%n@%m%f:%F{green}%~%f$(git_branch_name)%F{default}%#%f '
