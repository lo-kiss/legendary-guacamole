function fish_greeting
	echo -n "LOKI " 
	date "+%y-%m-%d %H:%M %a"
end

function fish_prompt
	set_color -b ff7800; set_color black
	echo '' (prompt_pwd) (date '+%H:%M')
	set_color normal
end

function fish_right_prompt
	set_color -d; echo cope 
end

# CD on exit in fff (file manager)
function f
	fff $argv
	set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
	cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end

# =============== Config Aliases ===============
alias fishc="cd ~/.legendary-guacamole/fish/ && nvim config.fish"
alias mc='cd ~/.monsterwm && nvim config.h'
alias .f='cd ~/.legendary-guacamole && ll && git status -s'
alias src='source ~/.config/fish/config.fish'
# alias i3c="nvim ~/.config/i3/config"

# =============== Xbps Aliases ===============
alias xi='sudo xbps-install -S'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove'
alias xrr='sudo xbps-remove -R'
alias xoo='sudo xbps-remove -Oo'
alias xq='xbps-query -Rs'

# =============== Git Aliases ===============
alias gs='git status -s'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gb='git branch'
alias gm='git merge'
alias gco='git checkout'

# =============== Other Aliases ===============
alias po='sudo poweroff'
alias untar='tar -xvf'
alias sudo='doas'
alias sc="scrot -s ~/media/ss/'%Y-%m-%d_%H-%M.png'"
alias cwd='pwd | xclip -selection clipboard'
alias uni='cd ~/docs/brain/universe/ && ll'
alias sx='swpa && startx'
alias swpa='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp3s0.conf'
alias em="emacsclient -c -a 'nvim'"
alias cll='clear && ll'
alias cdl='cd && clear'
alias cl="clear"
alias neo='neofetch'
alias msc="yt-dlp -x --audio-quality 0 --embed-metadata"
# alias x2="xrandr -s 1368x768"
# alias x1="xrandr -s 1920x1080"
# alias ro="setxkbmap -layout ro"
# alias us="setxkbmap -layout us"
# alias redquit="redshift -x && pkill redshift"

# echo "┌───┐   ┌───────┬───┬───┬──┐
# │   └───┤   ─   │       ┤  │
# └───────┴───────┴───┴───┴──┘"
