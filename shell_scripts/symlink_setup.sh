# cd /mnt/c/Windows/System32/
WINDOWS_USER=$(cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')
# cd ~

ln -s /mnt/c/Users/$WINDOWS_USER ~/winhome
ln -s /mnt/c/Users/$WINDOWS_USER/Documents/Development ~/development
