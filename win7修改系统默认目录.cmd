@echo off
echo ���������޸�ϵͳĬ��Ŀ¼
echo -----------------------------------------------------------------------
echo ����������£�
echo �޸�IE��ʼҳ���޸�IE��ʱ����·�����û�Ĭ�����桢�ĵ�·�����޸�ϵͳ��ʱ�ļ���·��
echo �����ϣ���޸���رմ���
echo -----------------------------------------------------------------------
echo �������Ӧ���޸ģ���
echo -----------------------------------------------------------------------
pause
echo �޸�IE��ʼҳ
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t REG_SZ /d "about:blank" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t REG_SZ /d "about:blank" /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\MAIN" /v "Start Page" /t REG_SZ /d "about:blank" /f
echo �޸�IE��ʱ����·��
mkdir D:\cache
mkdir D:\cache\ie
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Cache" /t REG_SZ /d "D:\cache\ie" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Cache" /t REG_SZ /d "D:\cache\ie" /f 
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Cache\Paths" /v "Directory" /t REG_SZ /d "D:\cache\ie" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Cache" /t REG_SZ /d "D:\cache\ie" /f 
echo �û�Ĭ�����桢�ĵ�·��
mkdir D:\user
mkdir D:\user\desktop
mkdir D:\user\documents
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Desktop" /t REG_SZ /d "D:\user\desktop" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Personal" /t REG_SZ /d "D:\user\documents" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Desktop" /t REG_SZ /d "D:\user\desktop" /f 
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal" /t REG_SZ /d "D:\user\documents" /f 
echo �޸�ϵͳ��ʱ�ļ���·��
mkdir D:\temp
reg add "HKEY_CURRENT_USER\Environment" /v TEMP /t REG_SZ /d "d:\temp" /f
reg add "HKEY_CURRENT_USER\Environment" /v TMP /t REG_SZ /d "d:\temp" /f
pause