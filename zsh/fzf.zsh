# 启动交互式cd
alias fcd='cd "$(find . -type d |x fzf --preview="ls -la {}")"'

# 列出文件以及内容
alias lls="x fzf --preview 'x bat --color=always -n --line-range=:500 {}'"

