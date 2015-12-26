@echo off
echo Last Update:2013-07-26
title 请选择操作……
echo -----------------------------------------------------------------------
echo   1、修改系统临时文件夹位置和用户环境变量。
echo -----------------------------------------------------------------------
echo   2、进行上面提到的操作的同时，一并创建开机自动清理垃圾文件的批处理。
echo   注意:  
echo   清理系统垃圾文件的批处理每次开机会自动运行，由于批处理窗口运行时可见，      
echo   此时桌面会闪过一个黑色窗口，这是正常的现象，稍后会自动退出，请勿在意。       
echo -----------------------------------------------------------------------
Set Choice=
Set /P Choice= 请输入 1 或者 2 之后按回车键。
If "%Choice%"=="1" Goto TEMP1
If "%Choice%"=="2" Goto TEMP2
:TEMP1
title 正在创建系统临时文件夹并修改用户环境变量……
md "D:\TEMP"
reg add "HKEY_CURRENT_USER\Environment" /v TEMP /t REG_SZ /d "D:\TEMP" /f
reg add "HKEY_CURRENT_USER\Environment" /v TMP /t REG_SZ /d "D:\TEMP" /f
title 操作成功完成！
pause
rem del %0
goto L_QUIT
:TEMP2
title 正在创建开机自动清理垃圾文件的批处理……
echo @echo off >> "清理系统垃圾.BAT" & echo del /s /q "%SystemDrive%\Windows\Temp\*.*" >> "清理系统垃圾.BAT" & echo rd /s /q "D:\TEMP" >> "清理系统垃圾.BAT" & echo md "D:\TEMP" >> "清理系统垃圾.BAT"
title 正在自动判断系统版本并创建启动项，请勿关闭本窗口，否则可能出现未知问题。
if exist "%systemdrive%\Users" (xcopy /Y "清理系统垃圾.BAT" "%AllUsersProfile%\Microsoft\Windows\Start Menu\Programs\Startup\") else (xcopy /Y "清理系统垃圾.BAT" "%AllUsersProfile%\「开始」菜单\程序\启动\")
del "清理系统垃圾.BAT"
Goto TEMP1
:L_QUIT