function tmux::get_option() {
	local opt="$1";
	local def_val="${DEFAULT_VALUE}";
	local opt_val;
	if opt_val="$(tmux show-option -gv "$opt")" 2>/dev/null; then {
		printf '%s\n' "$opt_val";
	} else {
		printf '%s\n' "$def_val";
	} fi
}