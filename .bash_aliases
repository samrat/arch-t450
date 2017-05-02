alias ls='ls --color=auto'
alias h='hledger'
alias serve='python -m http.server'

alias yt='youtube-dl'
alias ytp='yt -o "%(playlist_index)03d-%(title)s-%(id)s.%(ext)s"'
hcmit() {
    local hledger_file='.hledger.journal'
    pushd ~/code/ledger
    git add $hledger_file && git commit -m "$(date)"
    popd
}
