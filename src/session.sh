function tmux::create_session() {
	tmux new-session -n home -ds "$TMUX_SESSION_NAME" "$@" #\; send-keys -t ":${session_name}" "cat $HOME/.dotfiles.log" Enter 2>/dev/null ||:;
	# tmux_default_shell="$(tmux display -p '#{default-shell}')";
}
