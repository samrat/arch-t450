(map (lambda (binding) (xbindkey (car binding) (cdr binding)))
     (list
      ;; Brightness
      '(XF86MonBrightnessUp . "xbacklight -inc 5")
      '(XF86MonBrightnessDown . "xbacklight -dec 5")
      ;; Volume
      '(XF86AudioRaiseVolume . "amixer set Master playback 2+")
      '(XF86AudioLowerVolume . "amixer set Master playback 2-")
      '(XF86AudioMute . "amixer set Master toggle")
      '(XF86AudioMicMute . "amixer set Capture toggle")
      
      ;; Print screen
      '(Print . "scrot '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/screenshots/'")

      '(XF86LaunchA . "~/bin/batt-breakdown.sh")
      '((mod4 XF86Explorer) . "i3lock")))
