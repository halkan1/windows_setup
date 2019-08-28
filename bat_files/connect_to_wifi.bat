rem determine if network in range
netsh wlan show network | findstr /r "NETWORK ID"
if %errorlevel% == 0 (
    set "networkinrange=true"
) else (
    set "networkinrange=false"
)

rem connect to ssid if not connected
if %networkinrange% == true (
    netsh wlan connect name="NETWORK ID"
)
