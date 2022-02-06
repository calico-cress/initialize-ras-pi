# fbterm は自動起動しない
case $TERM in
    linux)
        [ "$FBTERM" ] && export TERM=fbterm && color_prompt=yes ;;
    fbterm)
        color_prompt=yes ;;
    xterm-color | *-256color)
        color_prompt=yes ;;
esac

# fbterm
function startFbterm () {
    FBTERM=1 exec fbterm -- uim-fep
}

alias fbterm=startFbterm

# emacs.. `TERM=xterm-256color emacs` だと上手くいかない
alias emacs="env TERM=xterm emacs -nw"

