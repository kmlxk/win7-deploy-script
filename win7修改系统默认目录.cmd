@echo off
echo 本批处理将修改系统默认目录
echo -----------------------------------------------------------------------
echo 具体包括以下：
echo 修改IE起始页、修改IE临时缓存路径、用户默认桌面、文档路径、修改系统临时文件夹路径
echo 如果不希望修改请关闭窗口
echo -----------------------------------------------------------------------
echo 按任意键应用修改！！
echo -----------------------------------------------------------------------
pause
echo 修改IE起始页
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "about:blank" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t REG_SZ /d "about:blank" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\MAIN" /v "Start Page" /t REG_SZ /d "about:blank" /f
echo 修改IE临时缓存路径
mkdir D:\cache
mkdir D:\cache\ie
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Cache" /t REG_SZ /d "D:\cache\ie" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Cache" /t REG_SZ /d "D:\cache\ie" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Paths" /v "Directory" /t REG_SZ /d "D:\cache\ie" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Cache" /t REG_SZ /d "D:\cache\ie" /f 
echo 用户默认桌面、文档路径
mkdir D:\user
mkdir D:\user\desktop
mkdir D:\user\documents
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop" /t REG_SZ /d "D:\user\desktop" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Personal" /t REG_SZ /d "D:\user\documents" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop" /t REG_SZ /d "D:\user\desktop" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal" /t REG_SZ /d "D:\user\documents" /f 
echo 修改系统临时文件夹路径
mkdir D:\temp
reg add "HKEY_CURRENT_USER\Environment" /v TEMP /t REG_SZ /d "d:\temp" /f
reg add "HKEY_CURRENT_USER\Environment" /v TMP /t REG_SZ /d "d:\temp" /f
pause