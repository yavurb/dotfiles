abbr --add of lsof -i :

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
abbr --add t tmux
abbr --add ta tmux attach -t
abbr --add tls tmux list-sessions
abbr --add tk tmux kill-session -t
abbr --add tka tmux kill-session -a
abbr --add tn tmux new-session -s
abbr --add td tmux detach

## Zumma Abbreviations
abbr --add zia cd ~/Developer/zumma/zumma-monorepo/invoices-api
abbr --add zr cd ~/Developer/zumma/zumma-monorepo/receipts-api
abbr --add zs cd ~/Developer/zumma/zumma-monorepo/zumma-service
abbr --add zb cd ~/Developer/zumma/zumma-monorepo/zummi-whatsapp-business
abbr --add zl cd ~/Developer/zumma/zumma-monorepo/lambdas
abbr --add zw cd ~/Developer/zumma/zumma-monorepo/whatsapp-api

## Git Abbreviations
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
