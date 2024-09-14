if status is-interactive
    # Commands to run in interactive sessions can go here
end

# GO Path
set GOPATH "$HOME/go"
set PATH "$PATH:$GOPATH/bin"

# Android studio
set ANDROID_HOME "$HOME/.android-sdk"
set PATH "$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
set PATH "$ANDROID_HOME/platform-tools:$PATH"

# Deno
set DENO_INSTALL "/Users/yurb/.deno"
set PATH "$DENO_INSTALL/bin:$PATH"
# PDM
set PATH "/Users/yurb/.local/bin:$PATH"

# Disable the fish greeting message
set fish_greeting ""

# Setup asdf
source ~/.asdf/asdf.fish

# Z plugin
zoxide init fish | source

# Pyenv setup
# Requires `brew install pyenv`
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
end

if type -q eza
    abbr --add ll eza --long --classify --all --header --git --no-user --tree --level 1 --icons --classify
    abbr --add ls eza --icons
    abbr lt eza --tree --icons -a -I '.git|__pycache__|.mypy_cache|.ipynb_checkpoints'
end

abbr --add py python3
abbr --add lg lazygit

# Starship prompt
starship init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yurb/google-cloud-sdk/path.fish.inc' ]
    . '/Users/yurb/google-cloud-sdk/path.fish.inc'
end
