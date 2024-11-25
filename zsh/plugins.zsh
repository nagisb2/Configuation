#fzf-rg
rfz() {
    x rg -l "$@" |x fzf --preview "x rg -p $@ {}"
}