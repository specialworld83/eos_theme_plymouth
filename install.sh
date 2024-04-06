#!/bin/bash
sudo cp -R ./eos /usr/share/plymouth/themes/
sudo sed -i "s/mkinitcpio -P/dracut-rebuild/g" /usr/lib/plymouth/plymouth-update-initrd
sudo plymouth-set-default-theme -R eos
