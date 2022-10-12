# function bp
#   printf '\n.0s' (seq -f 100)
# end

# if status is_interactive
  #bp
# end

set fish_greeting

# =============== Config Aliases ===============
alias fishc="nvim ~/.config/fish/config.fish" 
alias i3c="nvim ~/.config/i3/config"
alias .='cd ~/.legendary-guacamole'


# =============== Xbps Aliases ===============
alias xi='sudo xbps-install -S'
alias xr='sudo xbps-remove -R'

# =============== Other Aliases ===============
alias lg='ll | rg' # 'list-grep'
alias start_wpa='sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant-wlp3s0.conf'
alias em="emacsclient -c -a 'nvim'"
alias cdl='cd && clear'
alias cl="clear" 
alias neo='neofetch'
# alias clear="clear && bp" 
alias shitless="inxi -CDGISmzy 130 -c 10"
# alias lres="xrandr -s 1368x768"
# alias hres="xrandr -s 1920x1080"
# alias key-ro="setxkbmap -layout ro"
# alias key-us="setxkbmap -layout us"
# alias vt="~/dev/c/vim-train/vt"
# alias unic="~/dev/c/unic/unic"
# alias tlauncher="java -jar ~/TLauncher/TLauncher-2.841.jar"
# alias oolite="~/GNUstep/Applications/Oolite/oolite"
# alias rednight="redshift -b 0.5 -l manual:lat=44.426765:lon=26.102537 &"
# alias redquit="redshift -x && pkill redshift"
# alias cpc="xclip -sel c -r < "
# alias frecord="ffmpeg -video_size 1280x720 -framerate 30 -f x11grab -i :0.0+0,0 -c:v libx264rgb -crf 0 -preset ultrafast "
# alias yt-music="yt-dlp -x --audio-quality 0 --embed-metadata --embed-thumbnail -P ~/music/"
# alias yt-vid="yt-dlp -P ~/videos/youtube/"
