@echo off
chcp 65001

set "folder=C:\Windows\System32\Лабораторные"

set "newDate=2023-05-20"
set "newTime=11:00:00"

for /r "%folder%" %%F in (*) do (
    echo %%F
    powershell -Command "(Get-Item -Path '%%F').LastWriteTime = Get-Date '%newDate% %newTime%'"
    echo Файл %%F: Дата и время изменены.
)

echo Смена даты и времени завершена.
pause