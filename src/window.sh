function tmux::create_window() {
	tmux new-window -n "${WINDOW_NAME:"${PWD##*/}"}" -t "${TMUX_SESSION_NAME}" "$@";
}
