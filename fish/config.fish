function fish_greeting
	# set_color 80a0ff
    # cat ~/fish_art
    # printf "nunununununununununununununununununununununununununununununun \n"
	# set_color normal

	echo " "
	echo -n "== $USER/$hostname - "
	date "+%y/%m/%d %H:%M %a"
	set_color 808080
	hr
	set_color normal
end

function fish_prompt
	set_color ff5189
	printf "%s" (prompt_pwd) (fish_git_prompt) \n
	set_color normal
	printf " >= "
end

function fish_right_prompt
	set_color -d; echo (date '+%H:%M'); set_color normal 
end

# CD on exit in fff (file manager)
function f
	fff $argv
	set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
	cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end

# =============== Config Aliases ===============
alias fc="cd ~/.df/ && vis fish/config.fish"
alias mc='cd ~/.monsterwm && vis config.h'
alias vc="cd ~/.config/vis/ && vis visrc.lua"
alias .f='cd ~/.df && ll && git status -s'
alias src='source ~/.config/fish/config.fish'

# =============== Xbps Aliases ===============
alias xi='sudo xbps-install -S'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove'
alias xrr='sudo xbps-remove -R' # remove with dependecies
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

# =============== Other Aliases ===============
function lite
	lite-xl $argv &
end

function cdll
	cd $argv && ls -lah
end

alias yt="ytfzf"
alias py='python'
alias v='vis'
alias po='sudo poweroff'
alias untar='tar -xvf'
alias sudo='doas'
alias sc="scrot -s ~/media/ss/'%Y-%m-%d_%H-%M.png'"
alias cwd='pwd | xclip -selection clipboard'
alias sx='swpa && startx'
alias swpa='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp3s0.conf'
alias cll='clear && ll'
alias cdl='cd && clear'
alias cl="clear"
alias neo='neofetch'
alias msc="yt-dlp -x --audio-quality 0 --embed-metadata"
alias res2="xrandr -s 1368x768"
alias res1="xrandr -s 1920x1080"
# alias em="emacsclient -c -a 'nvim'"
# alias ro="setxkbmap -layout ro"
# alias us="setxkbmap -layout us"

# echo "┌───┐   ┌───────┬───┬───┬──┐
# │   └───┤   ─   │       ┤  │
# └───────┴───────┴───┴───┴──┘"
