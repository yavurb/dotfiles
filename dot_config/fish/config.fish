if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Disable the fish greeting message
set fish_greeting ""

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

# Abbreviations

if type -q eza
    abbr --add ll eza --long --classify --all --header --git --no-user --tree --level 1 --icons --classify
    abbr --add ls eza --icons
end

abbr --add py python3
abbr --add pip pip3
abbr --add lg lazygit
abbr --add v nvim
abbr --add c clear
abbr --add h history

## Zumma alias
abbr --add zia cd ~/Developer/zumma/zumma-monorepo/invoices-api
abbr --add zr cd ~/Developer/zumma/zumma-monorepo/receipts-api
abbr --add zs cd ~/Developer/zumma/zumma-monorepo/zumma-service
abbr --add zb cd ~/Developer/zumma/zumma-monorepo/zummi-whatsapp-business
abbr --add zl cd ~/Developer/zumma/zumma-monorepo/lambdas
abbr --add zw cd ~/Developer/zumma/zumma-monorepo/whatsapp-api

## Git alias
abbr --add g git
abbr --add gs git status
abbr --add ga git add
abbr --add gc git commit
abbr --add gp git push
abbr --add gl git pull
abbr --add gb git branch
abbr --add gd git diff
abbr --add gco git checkout
abbr --add gcm git commit -m

# External tools

## Pyenv setup
if type -q pyenv
    status --is-interactive; and source (pyenv init -|psub)
end

# Plugs
starship init fish | source
zoxide init fish | source
source ~/.asdf/asdf.fish

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yurb/google-cloud-sdk/path.fish.inc' ]
    . '/Users/yurb/google-cloud-sdk/path.fish.inc'
end
