if status is-interactive
    set fish_greeting ""
    starship init fish | source
    fastfetch
end

alias ls='eza --icons=always -a'
alias cls='clear'
