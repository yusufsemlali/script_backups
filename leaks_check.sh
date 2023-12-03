#!/bin/bash

# Check if the program exists
if [ ! -f ./a.out ]; then
    echo "The file ./a.out does not exist."
    exit 1
fi

# Run your program in the background
./a.out &

# Get its PID
pid=$!

# Wait for a bit to ensure the program has started
sleep 1

# Run the leaks command on the PID
leaks $pid