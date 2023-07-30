git pull
cd rad2
$IP_SERVER = Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Radmin VPN" | Select-Object IPAddress
Set-ItemProperty -Path server.properties -Name server-ip -Value $IP_SERVER.IPAddress
