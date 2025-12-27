@echo off
setlocal


:: 源路径
set "file1=iWonder"
set "file2=i-w-*.css"
set "file3=conf.user.json"

:: 目标路径
set "DST=%APPDATA%\Typora"

:: 复制 主题样式文件夹
xcopy "%cd%\%file1%\*" "%DST%\themes\%file1%" /e /i /y

:: 批量复制所有主题入口文件 (i-w-*.css)
for %%F in ("%cd%\%file2%") do (
    copy "%%F" "%DST%\themes"
)

:: 复制 快捷键配置文件
copy  "%cd%\%file3%" "%DST%\conf"


echo done.

:: 等待用户按任意键后退出
pause 
