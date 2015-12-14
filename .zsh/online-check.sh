#!/bin/zsh
# Used to display a green dot on the shell if a network connection is available, used in .zshrc
# Saved in ~/.zsh/online-check.sh and in a cron job as:
# * * * * * ~/.zsh/online-check.sh

local offline=`dig 8.8.8.8 +time=1 +short google.com A | grep -c "no servers could be reached"`
if [[ "$offline" == "0" ]]; then
  rm ~/.offline
else
  touch ~/.offline
fi
