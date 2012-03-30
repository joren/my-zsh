# %{$fg[red]%}‹$(~/.rvm/bin/rvm-prompt v)›
ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

PROMPT='%{$fg[red]%}$(~/.rvm/bin/rvm-prompt v)%{$fg[red]%}➜ %{$fg_bold[green]%}%p %{$fg[green]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'