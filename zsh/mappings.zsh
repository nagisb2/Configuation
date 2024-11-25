#yazi
function yazi() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXX")"
	x yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}



