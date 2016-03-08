# arch-t450

Config files and scripts I've used to set up Archlinux on my Thinkpad
T450. Right now, this is just a dump of most of the files that I've
had to change to get things mostly working.

- i3(with i3status)
- xinitrc
- dunst
- ...and more.

## Keyboard layout
```
thinkpad~ localectl status
   System Locale: LANG=en_US.UTF-8
       VC Keymap: us-acentos
      X11 Layout: us
       X11 Model: pc105
     X11 Variant: ,us
     X11 Options: caps:ctrl_modifier
```

Set using:

```
localectl set-x11-keymap us pc105 ,us caps:ctrl_modifier
```
