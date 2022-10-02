function tmux::create_window() {
	tmux new-window -n "${WINDOW_NAME:-vs:${PWD##*/}}" -t "${TMUX_SESSION_NAME}" "$@";
}
