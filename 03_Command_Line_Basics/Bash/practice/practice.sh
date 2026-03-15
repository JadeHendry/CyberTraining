#!/bin/bash

session="exercises"
script="python3 ./practice.py"
fifo="/tmp/exercise_fifo"

mkfifo $fifo 

tmux new -d -s $session
tmux split-window -v -t $session

# Keeping the below lines in case I need to intercept the tty session
# tmux_tty=$(tmux list-panes -aF '#S:#I:#W:#P #{pane_tty}' | grep $session:0:bash:1 | cut -d " " -f 2)
# echo "tty: $tmux_tty"

tmux send-keys -t "$session:0.0" "$script $fifo" C-m
tmux send-keys -t "$session:0.1" "tmux pipe-pane -o 'cat > ${fifo}'" C-m

#Intent is to have this clean up the pipes in the background
function check_tmux() {
    while tmux has-session -t $session 2>/dev/null
    do
        sleep 5
    done

    echo "session has been terminated.."

    rm $fifo

    echo "session has been terminated.."
}

check_tmux &

#tmux send-keys -t "$session:0.1" "exec > >(tee -a $fifo)" C-m
#tmux send-keys -t "$session:0.1" "exec > >(tee -a $fifo >&1)" C-m
tmux attach
