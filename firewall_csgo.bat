@Echo off
title [Windows Firewall Exclusion for CS:GO Server] by Ju4ka
CHCP 866 > null

timeout 1 > null

call :colored "Exceptions will now be made for ports 27001 and 27002 in the firewall using TCP and RDP protocols." White
timeout 3 > null
echo.
call :colored "My TikTok: bbf_servers_csgo" Blue
call :colored "From Ukraine with love!" Yellow

timeout 3 > null

echo.
echo.

call :colored "Opening incoming connections for ports 27001 and 27002" Red
timeout 3 > null
echo.
call :colored "[1/4] Port 27001 input TCP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27001 for CS:GO server" dir=in action=allow protocol=TCP localport=27001
call :colored "[2/4] Port 27001 input UDP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27001 for CS:GO server" dir=in action=allow protocol=UDP localport=27001 
call :colored "[3/4] Port 27002 input TCP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27002 for CS:GO server" dir=in action=allow protocol=TCP localport=27002
call :colored "[4/4] Port 27002 input UDP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27002 for CS:GO server" dir=in action=allow protocol=UDP localport=27002 
timeout 3 > null
echo.
call :colored "Done!" Green

timeout 5 > null

echo.
echo.

call :colored "Opening outgoing connections for ports 27001 and 27002" Red
timeout 3 > null
echo.
call :colored "[1/4] Port 27001 output TCP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27001 for CS:GO server" dir=out action=allow protocol=TCP localport=27001
call :colored "[2/4] Port 27001 output UDP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27001 for CS:GO server" dir=out action=allow protocol=UDP localport=27001 
call :colored "[3/4] Port 27002 output TCP" Cyan
timeout 2 > null 
netsh advfirewall firewall add rule name="Open Port 27002 for CS:GO server" dir=out action=allow protocol=TCP localport=27002
call :colored "[4/4] Port 27002 output UDP" Cyan
timeout 2 > null
netsh advfirewall firewall add rule name="Open Port 27002 for CS:GO server" dir=out action=allow protocol=UDP localport=27002 
timeout 3 > null
echo.
call :colored "Done!" Green

timeout 5 > null

echo.
echo.

call :colored "Ports 27001 and 27002 added to Windows firewall exceptions for TCP and UDP protocols." Green
timeout 2 > null
call :colored "Do not forget to check your Windows firewall!" Green
timeout 2 > null

echo.
echo.

pause

:colored
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor %2 %1