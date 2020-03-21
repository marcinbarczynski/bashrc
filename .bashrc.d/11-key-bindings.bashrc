stty werase undef
# Ctrl-W uses slashes as word boundaries
bind '\C-w:unix-filename-rubout'

if ! command -v fzf &>/dev/null; then
    echo >&2 "fzf is not installed. Visit https://github.com/junegunn/fzf for installation instructions."
else
    __fzf_find_path() {
        local root="$1"
        local pre="${READLINE_LINE:0:${READLINE_POINT}}"
        local suf="${READLINE_LINE:${READLINE_POINT}}"
        local path
        path=$(find ${root} 2>/dev/null | fzf)
        READLINE_LINE="${pre}${path}${suf}"
        ((READLINE_POINT += ${#path}))
    }

    # Ctrl-F to open fzf with all paths under the current directory tree
    bind -x '"\C-f":"__fzf_find_path .;"'
    # Ctrl-G to open fzf with all paths under /
    bind -x '"\C-g":"__fzf_find_path /;"'
fi
