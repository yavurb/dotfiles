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

# Posgresql
set PATH "/opt/homebrew/opt/postgresql@15/bin:$PATH"

set -U EDITOR nvim

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yurb/google-cloud-sdk/path.fish.inc' ]
    . '/Users/yurb/google-cloud-sdk/path.fish.inc'
end
