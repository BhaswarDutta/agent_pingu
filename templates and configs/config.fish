if status is-interactive
    set fish_greeting ""
    starship init fish | source
end

alias ls='eza --icons=always -a'
alias cls='clear'

