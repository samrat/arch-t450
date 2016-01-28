(map (lambda (binding) (xbindkey (car binding) (cdr binding)))
     (list
      ;; Brightness
      '(XF86MonBrightnessUp . "xbacklight -inc 3")
      '(XF86MonBrightnessDown . "xbacklight -dec 3")
      ;; Volume
      ;; NOTE: `pactl list sinks short` to find the sink id
      '(XF86AudioRaiseVolume . "pactl set-sink-volume 1 +5%")
      '(XF86AudioLowerVolume . "pactl set-sink-volume 1 -5%")
      '(XF86AudioMute . "pactl set-sink-mute 1 toggle")
      ;; `pactl list sources short` to find the source id
      '(XF86AudioMicMute . "pactl set-source-mute 2 toggle")
      
      ;; Print screen
      '(Print . "scrot '%Y-%m-%d-%H%M%S_$wx$h.png' -e 'mv $f ~/screenshots/'")

      '(XF86LaunchA . "~/bin/batt-breakdown.sh")
      '((mod4 XF86Explorer) . "i3lock")

      '((mod4 Shift b) . "~/bin/today-loadsched.sh")))
