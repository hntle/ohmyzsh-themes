if [[ -z $ZSH_THEME_PREFIX ]]; then
    ZSH_THEME_PREFIX='💻'
fi

if [[ $(id -u) == "0" ]]; then
  PROMPT='$ZSH_THEME_PREFIX %{$fg[white]%}%B[%b%{$fg[red]%}%n%{$fg[magenta]%}%B@%b%{$fg[green]%}%m%{$fg[white]%}:%{$fg[cyan]%}%c%{$fg[white]%}%B]%b $(git_prompt_info)
%{$fg[magenta]%}$ %{$reset_color%}'
else
  PROMPT='$ZSH_THEME_PREFIX %{$fg[white]%}%B[%b%{$fg[yellow]%}%n%{$fg[magenta]%}%B@%b%{$fg[green]%}%m%{$fg[white]%}:%{$fg[cyan]%}%c%{$fg[white]%}%B]%b $(git_prompt_info)
%{$fg[magenta]%}$ %{$reset_color%}'
fi

#RPROMPT='%(?.%{$fg[green]%}✔.%{$fg[red]%}✘%f)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}%B[%b%{$fg_no_bold[white]%}git:%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}%B]%b🟡"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%B]%b🟢"
