#!/usr/bin/env bash

# Cron job that syncs trello board and taskwarrrior tasks via trellowarrior
# Dependencies:
# - taskwarrior
# - trellowarrior

PATH=$HOME/.local/bin:/usr/local/bin:/usr/bin:$PATH
export PATH

# LOCK="/tmp/task_sync.lock"
# if command -v task && command -v trellowarrior && test ! -e $LOCK; then
#   touch $LOCK
#   trellowarrior sync && task sync
#   rm $LOCK
# fi
