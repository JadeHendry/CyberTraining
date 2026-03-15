import os
import argparse
import sys
import time
import fcntl


def main():
    parser = argparse.ArgumentParser(description="Bash Practice!.")
    parser.add_argument("fifo", type=str, help="Path to tmux pane tty")
    args = parser.parse_args()

    fd = os.open(args.fifo, os.O_RDONLY | os.O_NONBLOCK)
    fl = fcntl.fcntl(fd, fcntl.F_GETFL)
    fcntl.fcntl(fd, fcntl.F_SETFL, fl | os.O_NONBLOCK)
    
    print("Welcome to the Terminal Exercise Checker!")

    with os.fdopen(fd) as pipe:
        while True:
            try:
                data = pipe.read()
                if len(data) > 0 and data is not None:
                    print("Read data: ", data)
            except Exception as e:
                print(e)
            time.sleep(1)

if __name__ == "__main__":
    main()

