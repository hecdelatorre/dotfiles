# bspwm - Initial configuration

**Installation**

* Debian
  
  ```shell
  sudo apt install bspwm sxhkd polybar rofi picom feh ranger xclip scrot -y
  ```

* Fedora
  
  ```shell
  sudo dnf in bspwm sxhkd polybar rofi picom feh ranger xclip scrot -y
  ```

**Remove directories if they exist**

```shell
rm -vrf ~/.config/bspwm ~/.config/sxhkd ~/.config/polybar
```

**Create new directories**

```shell
mkdir ~/.config/bspwm ~/.config/sxhkd ~/.config/polybar
```

**Copy sample configuration files**

```shell
cp -vf /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm
cp -vf /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd
```

**In Fedora**

```shell
cp -vf /usr/share/doc/polybar/examples/config.ini ~/.config/polybar
```

**In Debian**

```shell
cp -vf /usr/share/doc/polybar/config ~/.config/polybar
```

**Create launch.sh file**

```shell
echo '#!/usr/bin/env bash
killall -q polybar
# For wait until the process is down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown
# polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown' > ~/.config/polybar/launch.sh
```

**Assign execution permissions**

```shell
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh
```

**Add startup instructions**

```shell
echo '# Auto start' | tee -a ~/.config/bspwm/bspwmrc
echo 'feh --bg-fill ~/Pictures/wallpaper.jpg' | tee -a ~/.config/bspwm/bspwmrc
echo 'picom --no-vsync &' | tee -a ~/.config/bspwm/bspwmrc
echo '$HOME/.config/polybar/launch.sh' | tee -a ~/.config/bspwm/bspwmrc
```

**Configure the xinitrc file**

```shell
cp -vf /etc/X11/xinit/xinitrc ~/.xinitrc
echo 'sxhkd &' | tee -a ~/.xinitrc
echo 'exec bspwm' | tee -a ~/.xinitrc
```

# Copy my settings - bspwm

```shell
sh -c "$(curl -fsSL https://gitlab.com/hecdelatorre/dotfiles/-/raw/main/bspwm/install-bspwm.sh)"
```
