#!/bin/bash

if [ -e $1 ]; then
  echo "Original modification time: $(stat -c %y $1)"
  touch $1
  echo "New modification time: $(stat -c %y $1)"
else
  echo "File does not exist."
fi
