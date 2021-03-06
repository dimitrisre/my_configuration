#!/bin/bash
function install_mozilla {
  echo "____________Installing firefox latest edition_________"
  pushd $HOME/dotfiles/
  sudo apt remove -y firefox-esr
  sudo mkdir /opt/mozdownload
  git clone https://github.com/mozilla/mozdownload /opt/mozdownload
  cd /opt/mozdownload/
  sudo pip install mozdownload &&
  sudo python setup.py develop
  cd /tmp/ && sudo mozdownload --version=latest
  sudo bunzip2 /tmp/firefox-*.bz2
  sudo tar xvf /tmp/firefox-*.tar -C /usr/share/
  sudo mkdir -p /usr/share/firefox/icons/
  sudo cp $HOME/dotfiles/desktop_files/icons/mozicon128.png /usr/share/firefox/icons/
  sudo cp $HOME/dotfiles/desktop_files/firefox.desktop /usr/share/applications/
  popd
  echo "_________Finished________"
}
