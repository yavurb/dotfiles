## Pyenv setup
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
end

# Plugs
starship init fish | source
zoxide init fish | source
source ~/.asdf/asdf.fish
