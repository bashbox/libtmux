function tmux::show-option() {
	local opt="$1";
	local opt_val;

	if opt_val="$(tmux start-server\; show-option -gv "$opt")" 2>/dev/null; then {
		printf '%s\n' "$opt_val";
	} elif test -v DEFAULT_VALUE; then {
      printf '%s\n' "$DEFAULT_VALUE";
  } else {
    return 1;
	} fi
}

