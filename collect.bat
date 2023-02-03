rem execute with output directed into file that can be transferred
rem collect.bat > hostdetails.txt
rem host details
echo %USERDOMAIN%\%USERNAME%
systeminfo
rem routing
ipconfig /all
arp -a
rem domain connected info
net group "Domain Admins" /domain
net user /domain
net group "Domain Controllers" /domain
rem host firewall
netsh advfirewall show allprofiles
rem active connections
netstat -nao
rem running processes
tasklist /v
sc query
