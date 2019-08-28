# Download Apps. Run this as your own user
Invoke-WebRequest -Uri https://atom.io/download/windows_x64 -OutFile $env:USERPROFILE\Downloads\AtomSetup-x64.exe -UseBasicParsing
Invoke-WebRequest -Uri https://laptop-updates.brave.com/latest/winx64 -OutFile $env:USERPROFILE\Downloads\BraveBrowserSetup.exe -UseBasicParsing
