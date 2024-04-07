#!/bin/bash
sudo cp -R ./eos /usr/share/plymouth/themes/
sudo cp -R eos_plymouth_git.hook /usr/share/libalpm/hooks/
sudo cp -R eos_plymouth.hook /usr/share/libalpm/hooks/
sudo sed -i "s/mkinitcpio -P/dracut-rebuild/g" /usr/lib/plymouth/plymouth-update-initrd
sudo plymouth-set-default-theme -R eos
