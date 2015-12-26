@echo off
echo 修改chrome用户目录路径
echo 任意键继续，Ctrl+C取消
pause
cd "C:\Users\Administrator\AppData\Local\Google\Chrome"
mkdir D:\cache\chrome
copy "User Data" D:\cache\chrome
mklink /D "C:\Users\Administrator\AppData\Local\Google\Chrome\User Data" "D:\cache\chrome\User Data"