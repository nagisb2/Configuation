#yazi
function yazi() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	x yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#tree
function xtree() {
    local dir=$1
    local indent=""
    echo -e "${dir}"
    for file in $(ls $dir);
    do
        if [ -d "$dir/$file" ]; then
            echo -e "${indent}|---$(basename $dir/$file)/"
            new_indent="${indent}|   "
            xtree "$dir/$file" $new_indent
        else
            echo -e "${indent}|---$(basename $file)"
        fi
    done
}
