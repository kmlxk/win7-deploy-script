@echo off
echo �޸�chrome�û�Ŀ¼·��
echo �����������Ctrl+Cȡ��
pause
cd "C:\Users\Administrator\AppData\Local\Google\Chrome"
mkdir D:\cache\chrome
copy "User Data" D:\cache\chrome
mklink /D "C:\Users\Administrator\AppData\Local\Google\Chrome\User Data" "D:\cache\chrome\User Data"