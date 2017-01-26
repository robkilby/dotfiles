function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    svn status >/dev/null 2>/dev/null && echo '*' && return
    echo '○'
}

function battery_charge {
    echo `battery_pct_prompt` 2>/dev/null
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function rbenv_ps1 {
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  echo $rbenv_ruby_version
}

PROMPT='%(?,%F{green},%F{red})%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} using %{$fg[blue]%}$(rbenv_ps1)%{$reset_color%} in %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}
$(battery_charge) $(virtualenv_info)$(prompt_char) '

