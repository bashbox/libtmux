function tmux::show-option() {
	local opt="$1";
	local opt_val;

	if opt_val="$(tmux start-server\; show-option -gv "$opt" 2>/dev/null)" && test -n "${opt_val:-}"; then {
		printf '%s\n' "$opt_val";
	} elif test -v DEFAULT_VALUE; then {
      printf '%s\n' "$DEFAULT_VALUE";
  } else {
    return 1;
	} fi
}

function tmux::chain-cmds() {
  declare -a cmds;
  declare cmd stdin;

  IFS= read -t0.01 -u0 -r -d '' stdin || :;

  while read -r cmd; do {
    if ! [[ "$cmd" =~ ^\# ]] && test -n "${cmd:-}"; then {
      eval "cmds+=(${cmd} ';')"
    } fi
  } done <<<"$stdin"

  tmux "${cmds[@]}"
}

