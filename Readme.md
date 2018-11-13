# Why?

Mac keyboard for PC Ubuntu box.

I usually work with both Mac and PC keyboard, this brings Mac keyboard to Ubuntu with PC keyboard by switching some of the ctrl to alt (close to cmd in mac).

# Installation

    sudo apt install compizconfig-settings-manager autokey-gtk
    git clone https://github.com/namgk/autokey-config.git
    cp -r autokey-config ~/.config/autokey/data
    
# Disable PC ALT key's default behaviour (select menu bar, showing the HUD)

    ccsm
    Desktop -> Ubuntu Unity Plugin -> Key to show the menu bar while pressed -> Disabled
    
    unity-control-center
    Keyboard setting -> Shortcuts -> Launchers -> Key to show the HUD -> Disabled
    
# Start autokey on startup

    autokey-gtk -> Edit -> Preferences -> Automatically start Autokey at login -> checked (???)
    
    



