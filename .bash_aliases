alias ls='ls --color=auto'
alias h='hledger'

hcmit() {
    local hledger_file='.hledger.journal'
    pushd ~/code/ledger
    git add $hledger_file && git commit -m "$(date)"
    popd
}
