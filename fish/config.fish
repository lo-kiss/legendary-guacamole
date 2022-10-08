function bottomp
  printf '\n.0s' (seq 1..100)
end

if status is_interactive
  bottomp
end

# =============== Config Aliases ===============
alias fishc="nvim ~/.config/fish/config.fish" 
alias i3c="nvim ~/.config/i3/config"

# =============== Other Aliases ===============
alias lres="xrandr -s 1368x768"
alias hres="xrandr -s 1920x1080"
alias em="emacsclient -c -a 'nvim'"
alias clear="clear && bottomp" 
alias cl="clear && bottomp" 
alias key-ro="setxkbmap -layout ro"
alias key-us="setxkbmap -layout us"
alias shitless="inxi -CDGISmzy 130 -c 10"
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
