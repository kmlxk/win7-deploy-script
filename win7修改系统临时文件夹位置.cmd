@echo off
echo Last Update:2013-07-26
title ��ѡ���������
echo -----------------------------------------------------------------------
echo   1���޸�ϵͳ��ʱ�ļ���λ�ú��û�����������
echo -----------------------------------------------------------------------
echo   2�����������ᵽ�Ĳ�����ͬʱ��һ�����������Զ����������ļ���������
echo   ע��:  
echo   ����ϵͳ�����ļ���������ÿ�ο������Զ����У�����������������ʱ�ɼ���      
echo   ��ʱ���������һ����ɫ���ڣ����������������Ժ���Զ��˳����������⡣       
echo -----------------------------------------------------------------------
Set Choice=
Set /P Choice= ������ 1 ���� 2 ֮�󰴻س�����
If "%Choice%"=="1" Goto TEMP1
If "%Choice%"=="2" Goto TEMP2
:TEMP1
title ���ڴ���ϵͳ��ʱ�ļ��в��޸��û�������������
md "D:\TEMP"
reg add "HKEY_CURRENT_USER\Environment" /v TEMP /t REG_SZ /d "D:\TEMP" /f
reg add "HKEY_CURRENT_USER\Environment" /v TMP /t REG_SZ /d "D:\TEMP" /f
title �����ɹ���ɣ�
pause
rem del %0
goto L_QUIT
:TEMP2
title ���ڴ��������Զ����������ļ�����������
echo @echo off >> "����ϵͳ����.BAT" & echo del /s /q "%SystemDrive%\Windows\Temp\*.*" >> "����ϵͳ����.BAT" & echo rd /s /q "D:\TEMP" >> "����ϵͳ����.BAT" & echo md "D:\TEMP" >> "����ϵͳ����.BAT"
title �����Զ��ж�ϵͳ�汾���������������رձ����ڣ�������ܳ���δ֪���⡣
if exist "%systemdrive%\Users" (xcopy /Y "����ϵͳ����.BAT" "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\Startup\") else (xcopy /Y "����ϵͳ����.BAT" "%AllUsersProfile%\����ʼ���˵�\����\����\")
del "����ϵͳ����.BAT"
Goto TEMP1
:L_QUIT