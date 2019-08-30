# https://docs.microsoft.com/en-us/windows/wsl/install-on-server
# Run this as admin

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

$URL = 'https://aka.ms/wsl-ubuntu-1804'
$Filename = "$(Split-Path $URL -Leaf).appx"
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri $URL -OutFile $Filename -UseBasicParsing

Invoke-Item $FileName

# Find URL for Windows Terminal and repeat above process

# Windows Terminal
https://www.microsoft.com/store/productId/9N0DX20HK701
ms-windows-store://pdp/?ProductId=9N0DX20HK701

# WSL Ubuntu
https://www.microsoft.com/store/productId/9NBLGGH4MSV6
ms-windows-store://pdp/?ProductId=9NBLGGH4MSV6
