FOR /F "usebackq" %%i in (`wsl exec hostname -I`) DO @SET IP=%%i
netsh interface portproxy add v4tov4 listenport=8000 connectaddress=%IP%
netsh.exe interface portproxy show v4tov4

ipconfig
pause

netsh.exe interface portproxy delete v4tov4 8000
netsh.exe interface portproxy show v4tov4
