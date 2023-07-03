Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion" | Select-Object ProductName,ReleaseID,CurrentBuild,UBR,CurrentMajorVersionNumber,CurrentMinorVersionNumber,BuildLab,BuildLabEx
