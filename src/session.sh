use std::native::sleep;

function tmux::new-session() {
  declare +x WINDOW_NAME SESSION_NAME;
	tmux new-session -n "${WINDOW_NAME:-home}" -ds "$SESSION_NAME" "$@";
}

function await::until_tmux_has-session {
  until tmux has-session 2>/dev/null; do {
    sleep 0.5;
  } done
}

