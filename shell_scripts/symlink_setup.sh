WINDOWS_USER=$(/mnt/c/Windows/System32/cmd.exe /c 'echo %USERNAME%' | sed -e 's/\r//g')

ln -s /mnt/c/Users/$WINDOWS_USER ~/winhome
ln -s /mnt/c/Users/$WINDOWS_USER/Documents/Development ~/development

