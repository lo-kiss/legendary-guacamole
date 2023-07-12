function fish_greeting
# echo "┌───┐   ┌───────┬───┬───┬──┐
# │   └───┤   ─   │       ┤  │
# └───────┴───────┴───┴───┴──┘" | lolcat -r -b
end

#function fish_prompt
#	set_color ff5189
#	printf "%s" (prompt_pwd) (fish_git_prompt) \n
#	set_color normal

#	printf " 󰁕 "
#end

export EDITOR=nvim

function lfcd
    set tmp (mktemp)
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path=$tmp $argv
    if test -f "$tmp"
        set dir (cat $tmp)
        rm -f $tmp
        if test -d "$dir"
            if test "$dir" != (pwd)
                cd $dir
            end
        end
    end
end

# bind \co 'set old_tty (stty -g); stty sane; lfcd; stty $old_tty; commandline -f repaint'

# =============== Config Aliases ===============
alias fc="cd ~/.df/ && $EDITOR fish/config.fish"
alias mc="cd ~/.monsterwm && $EDITOR config.h"
alias .f='cd ~/.df && ll && git status -s'
alias src='source ~/.config/fish/config.fish'

# =============== Xbps Aliases ===============
alias xi='sudo xbps-install -S'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove -R' # remove with dependecies
alias xoo='sudo xbps-remove -Oo' # clean unwanted packages
alias xq='xbps-query -Rs'

# =============== Git Aliases ===============
alias gs='git status -s'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gpull='git pull'
alias gb='git branch'
alias gm='git merge'
alias gco='git checkout'

# =============== Exa Aliases ===============
alias ls='exa'
alias ll='ls -l --icons --group-directories-first --git --no-user'
alias lt='ll --tree --level=3'

# =============== Other Aliases ===============
alias fetch='fastfetch'
alias lf='lfcd'
alias niv="nsxiv"
alias cat="bat"
alias hr="hr | lolcat"
alias yt="ytfzf"
alias ytm="ytfzf -m"
alias py='python'
alias po='sudo poweroff'
alias untar='tar -xvf'
alias sudo='doas'
alias cwd='pwd | xclip -selection clipboard'
alias cdl='cd && clear'
alias cl="clear"
alias ytmusic="yt-dlp -x --audio-quality 0 --embed-metadata --embed-thumbnail --add-metadata"
alias res2="wlr-randr --output eDP-1 --custom-mode 1368x768"
alias res1="wlr-randr --output eDP-1 --custom-mode 1920x1080"

# export PATH="$HOME/.cargo/bin:$PATH"
# alias swpa='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp3s0.conf'
# alias ro="setxkbmap -layout ro"
# alias us="setxkbmap -layout us"

