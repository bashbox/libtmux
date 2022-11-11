function tmux::new-window() {
  declare +x WINDOW_NAME SESSION_NAME
	tmux new-window -n "${WINDOW_NAME:-"${PWD##*/}"}" -t "${SESSION_NAME}" "$@";
}
