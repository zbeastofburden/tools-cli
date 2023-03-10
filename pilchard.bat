@echo off

::Access any shares
net share c=c:\ /GRANT:Everyone,FULL
net share d=d:\ /GRANT:Everyone,FULL
net share e=e:\ /GRANT:Everyone,FULL
net share g=g:\ /GRANT:Everyone,FULL
net share f=f:\ /GRANT:Everyone,FULL
net share i=i:\ /GRANT:Everyone,FULL
net share e=e:\ /GRANT:Everyone,FULL
net share h=h:\ /GRANT:Everyone,FULL
net share j=j:\ /GRANT:Everyone,FULL
net share k=k:\ /GRANT:Everyone,FULL

::canned
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\KSDE2.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\KSDE1.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP18.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP17.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP16.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP15.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP14.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP13.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP12.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP11.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVP10.0.0" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\MBAMService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McAWFwk" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\MSK80Service" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McAPExe" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McBootDelayStartSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mccspsvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mfefire" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\HomeNetSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ModuleCoreService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McMPFSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mcpltsvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McProxy" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McODS" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mfemms" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McAfee SiteAdvisor Service" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\mfevtp" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\McNaiAnn" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\nanosvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\NortonSecurity" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\!SASCORE" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\SBAMSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ZillyaAVAuxSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ZillyaAVCoreSvc" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\QHActiveDefense" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\avast! Antivirus" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\avast! Firewall" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AVG Antivirus" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirMailService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\Avira.ServiceHost" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirWebService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\AntiVirSchedulerService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\vsservppl" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ProductAgentService" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\vsserv" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\updatesrv" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\cmdAgent" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\cmdvirth" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\DragonUpdater" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\ekrn" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\0247141531883172mcinstcleanup" /f
Reg Delete "HKLM\SYSTEM\CurrentControlSet\services\PEFService" /f

::x64 or x86 to modify reg keys
set "osX=%PROCESSOR_ARCHITECTURE%"

if defined PROCESSOR_ARCHITEW6432 set "osX=AMD64"

if "%osX%"=="x86" (
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d "24914" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.wav;" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d "1" /f
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "2" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AvastUI.exe" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QHSafeTray" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Zillya Antivirus" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBAMTray" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBRegRebootCleaner" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "egui" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IseUI" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "COMODO Internet Security" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ClamWin" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Avira SystrayStartTrigger" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AVGUI.exe" /f
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f
) 

::x64
else (
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "DefaultFileTypeRisk" /t REG_DWORD /d "24914" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Associations" /v "LowRiskFileTypes" /t REG_SZ /d ".zip;.rar;.nfo;.txt;.exe;.bat;.com;.cmd;.reg;.msi;.htm;.html;.gif;.bmp;.jpg;.avi;.mpg;.mpeg;.mov;.mp3;.m3u;.wav;" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d "1" /f /reg:64
Reg Add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d "2" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AvastUI.exe" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QHSafeTray" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Zillya Antivirus" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBAMTray" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBRegRebootCleaner" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "egui" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IseUI" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "COMODO Internet Security" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ClamWin" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Avira SystrayStartTrigger" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AVGUI.exe" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:32
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:32
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AvastUI.exe" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "QHSafeTray" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Zillya Antivirus" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBAMTray" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SBRegRebootCleaner" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "egui" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "IseUI" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "COMODO Internet Security" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "ClamWin" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Avira SystrayStartTrigger" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "AVGUI.exe" /f /reg:64
Reg Delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:64
Reg Delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "SUPERAntiSpyware" /f /reg:64
)
