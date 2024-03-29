ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$reset_color%}%{$fg[fc3f3f]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[blue]%}) %{$reset_color%}%{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%})"

ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[fc3f3f]%}!%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[cyan]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[fc3f3f]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg_bold[magenta]%}hg:(%{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[magenta]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_HG_PROMPT_CLEAN="%{$fg[magenta]%})"

ZSH_THEME_TF_PROMPT_PREFIX="%{$fg[white]%}"
ZSH_THEME_TF_PROMPT_SUFFIX="%{$reset_color%}"

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[fc3f3f]%}➜ )"
first_line_middle=$((COLUMNS-#first_line_left))
PROMPT='%{$fg_bold[blue]%}[%D{%H:%M:%S}]${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(tf_prompt_info) $(git_prompt_info)$(git_prompt_status)$(hg_prompt_info)
%{$fg_bold[yellow]%}λ %{$reset_color%}%{$fg[yellow]%}'
