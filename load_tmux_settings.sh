#!/bin/bash
function restore_tmux_settings {
  cp $HOME/my_configuration/config_files/tmux.conf $HOME/.tmux.conf
  tmux source $HOME/.tmux.conf
}
