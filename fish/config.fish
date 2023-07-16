set -g fish_greeting

function fish_prompt
  set git_branch (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')
  echo (set_color F00)(date "+%Y-%m-%d %H.%M.%S")(set_color 00F)(echo $git_branch) (set_color 0F0)(pwd)
  echo -n '$ '
end

switch (uname)
  case Linux
    alias pbcopy='xsel --clipboard --input'
    alias pbpaste='xsel --clipboard --output'
  case Darwin
    alias ls=gls
end

alias q=nvim
alias l='ls -AFl --group-directories-first --time-style="+%Y-%m-%d %H-%M-%S"'
