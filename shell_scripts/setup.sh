#!/bin/bash

# Get logged in Windows user
WINDOWS_USER=$(cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')

# Create an array of the folders we want in out dev folder
array=(
    bash
    c
    fonts
    general
    python
    windows
    web
    ws
  )

# Below to verify created array
# for item in ${array[*]};do printf "   %s\n" $item;done

for item in ${array[*]}
    do mkdir -p /mnt/c/Users/$WINDOWS_USER/Documents/Development/${item}
done

ln -s /mnt/c/Users/$WINDOWS_USER ~/winhome
ln -s /mnt/c/Users/$WINDOWS_USER/Documents/Development ~/development
