(map (lambda (binding) (xbindkey (car binding) (cdr binding)))
     (list
      ;; Brightness
      '(XF86MonBrightnessUp . "xbacklight -inc 3")
      '(XF86MonBrightnessDown . "xbacklight -dec 3")
      ;; Volume
      ;; NOTE: `pactl list sinks short` to find the sink id
      '(XF86AudioRaiseVolume . "pamixer --increase 5 --allow-boost")
      '(XF86AudioLowerVolume . "pamixer --decrease 5 --allow-boost")
      '(XF86AudioMute . "pamixer -t")
      ;; `pactl list sources short` to find the source id
      '(XF86AudioMicMute . "pactl set-source-mute 1 toggle")
      
      ;; Print screen
      '(Print . "scrot '%Y-%m-%d-%H%M%S_$wx$h.png' -e 'mv $f ~/screenshots/'")

      '(XF86LaunchA . "~/bin/batt-breakdown.sh")
      '((mod4 XF86Explorer) . "i3lock && xset dpms force off")

      '((mod4 XF86LaunchA) . "setxkbmap -layout us")
      '((mod4 Shift XF86LaunchA) . "setxkbmap -layout us -variant colemak")
      
      '((mod4 Shift b) . "~/bin/today-loadsched.sh")))
