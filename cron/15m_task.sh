#!/usr/bin/env bash

# Cron job that syncs trello board and taskwarrrior tasks via trellowarrior
# Dependencies:
# - taskwarrior
# - trellowarrior

PATH=$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH
export PATH

if command -v task && command -v trellowarrior; then
  trellowarrior sync
  task sync
fi
