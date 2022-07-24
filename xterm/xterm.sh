echo 'IBM Plex typeface required'
echo '! Adjusting the font
xterm*faceName: IBM Plex Mono
xterm*faceSize: 11
 
! Changing foreground/background color
!Theme Nine
xterm*background: rgb:1a/1a/1a
xterm*foreground: rgb:d6/d6/d6
xterm*color0:     rgb:00/00/00
xterm*color1:     rgb:9e/18/28
xterm*color2:     rgb:00/88/00
xterm*color3:     rgb:96/8a/38
xterm*color4:     rgb:41/41/71
xterm*color5:     rgb:96/3c/59
xterm*color6:     rgb:41/81/79
xterm*color7:     rgb:be/be/be
xterm*color8:     rgb:66/66/66
xterm*color9:     rgb:cf/61/71
xterm*color10:     rgb:7c/bc/8c
xterm*color11:     rgb:ff/f7/96
xterm*color12:     rgb:41/86/be
xterm*color13:     rgb:cf/9e/be
xterm*color14:     rgb:71/be/be
xterm*color15:    rgb:ff/ff/ff

xterm*cursorColor: #d6d6d6

! Adding a scroll-bar on the right side
xterm*scrollBar: true
xterm*rightScrollBar:true
 
! prevent jumping back to the last line with new output
xterm*scrollTtyOutput: false
 
! add keyboard shortcuts to jump to beginning/end
xterm*vt100.translations: #override \n\
 Shift <Key>Home: scroll-forw(10000000000) \n\
 Shift <Key>End: scroll-back(10000000000)' > ~/.Xresources
xrdb -merge ~/.Xresources
echo 'xterm is configured'
