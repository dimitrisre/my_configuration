#!/bin/bash
function restore_gnome_settings {
  echo "____________ Loading gnome settings ____________"
  dconf load /org/gnome/ < $HOME/my_configuration/config_files/gnome_settings.conf
  cp $HOME/my_configuration/config_files/bashrc $HOME/.bashrc
  echo "_________Finished________"
}
