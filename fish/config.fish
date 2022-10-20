set fish_greeting
echo "┌───┐   ┌───────┬───┬───┬──┐
│   └───┤   ─   │       ┤  │
└───────┴───────┴───┴───┴──┘"
date "+%y-%m-%d %H:%M %a"

# =============== Config Aliases ===============
alias fishc="nvim ~/.config/fish/config.fish"
alias mc='nvim ~/.monsterwm/config.h'
alias .='cd ~/.legendary-guacamole && ll'
alias src='source ~/.config/fish/config.fish'
alias srcl='clear &&source ~/.config/fish/config.fish'
# alias i3c="nvim ~/.config/i3/config"

# =============== Xbps Aliases ===============
alias xi='sudo xbps-install -S'
alias xu='sudo xbps-install -Su'
alias xr='sudo xbps-remove'
alias xrr='sudo xbps-remove -R'
alias xoo='sudo xbps-remove -Oo'

# =============== Git Aliases ===============
alias gs='git status -s'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

# =============== Other Aliases ===============
alias blt='cd ~/dev/web/bloated_website_2022-10-13/ && ll'
alias lg='ll | rg' # 'list-grep'
alias sx='startx'
alias swpa='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp3s0.conf'
alias em="emacsclient -c -a 'nvim'"
alias cll='clear && ll'
alias cdl='cd && clear'
alias cl="clear" 
alias neo='neofetch'
# alias lres="xrandr -s 1368x768"
# alias hres="xrandr -s 1920x1080"
# alias key-ro="setxkbmap -layout ro"
# alias key-us="setxkbmap -layout us"
# alias tlauncher="java -jar ~/TLauncher/TLauncher-2.841.jar"
# alias rednight="redshift -b 0.5 -l manual:lat=44.426765:lon=26.102537 &"
# alias redquit="redshift -x && pkill redshift"
# alias yt-music="yt-dlp -x --audio-quality 0 --embed-metadata --embed-thumbnail -P ~/music/"
# alias yt-vid="yt-dlp -P ~/videos/youtube/"
