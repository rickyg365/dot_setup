#!/bin/bash

# Create new session
session="coding"

# Start session, detached
tmux new-session -d -s $session

# Rename Initial Window(0)
tmux rename-window -t 0 'Main'

# Start up work directory
tmux send-keys -t 'Main' 'cd ~' C-m 'clear && ls' C-m

tmux splitw -h

# Select pane 2
tmux selectp -t 1
tmux send-keys 'cd ~' C-m 'clear && ls' C-m

# Split pane 2 vertically by 25%
tmux splitw -v -p 25
tmux selectp -t 2
tmux send-keys 'cd ~' C-m 'clear && ls' C-m

# select first pane
tmux selectp -t 0

# # New window
# tmux new-window -t ${session}:
# tmux rename-window -t 1 'editor'
