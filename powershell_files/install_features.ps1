# https://docs.microsoft.com/en-us/windows/wsl/install-on-server
# Run this as admin

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

$URL = 'https://aka.ms/wsl-ubuntu-1804'
$Filename = "$(Split-Path $URL -Leaf).appx"
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri $URL -OutFile $Filename -UseBasicParsing

Invoke-Item $FileName

# Find URL for Windows Terminal and repeat above process
