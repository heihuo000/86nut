@echo off
setlocal enabledelayedexpansion

:loop
    echo 1. 在原有后缀名后添加.txt
    echo 2. 删除文件的后缀名（排除.bat和.vbs）
    echo 3. 退出
    set /p choice=请选择操作(1-3):

    if "!choice!"=="1" goto add_txt_suffix
    if "!choice!"=="2" goto remove_extension
    if "!choice!"=="3" goto end
    echo 无效的选择，请重新输入！
    pause
    goto loop

:add_txt_suffix
    set /p confirm=是否递归修改子目录中的文件？(Y/N):
    if /i "!confirm!"=="Y" (
        goto add_txt_suffix_recursive
    ) else if /i "!confirm!"=="N" (
        goto add_txt_suffix_current
    ) else (
        echo 无效的输入，请输入Y或N。
        pause
        goto add_txt_suffix
    )

:add_txt_suffix_recursive
    echo 正在递归地为所有文件（排除.bat和.vbs）在原有后缀名后添加.txt...
    for /r %%f in (*) do (
        if /i not "%%~xf"==".bat" if /i not "%%~xf"==".vbs" (
            ren "%%f" "%%~nf%%~xf.md"
        )
    )
    echo 操作已完成！
    pause
    goto loop

:add_txt_suffix_current
    echo 正在为当前目录下所有文件（排除.bat和.vbs）在原有后缀名后添加.txt...
    for %%f in (*.*) do (
        if /i not "%%~xf"==".bat" if /i not "%%~xf"==".vbs" (
            ren "%%f" "%%~nf%%~xf.md"
        )
    )
    echo 操作已完成！
    pause
    goto loop

:remove_extension
    set /p confirm=是否递归删除子目录中文件的后缀名？(Y/N):
    if /i "!confirm!"=="Y" (
        goto remove_extension_recursive
    ) else if /i "!confirm!"=="N" (
        goto remove_extension_current
    ) else (
        echo 无效的输入，请输入Y或N。
        pause
        goto remove_extension
    )

:remove_extension_recursive
    echo 正在递归地删除非.bat和非.vbs文件的后缀名...
    for /r %%f in (*) do (
        if /i "%%~xf" neq ".bat" if /i "%%~xf" neq ".vbs" (
            set "filename=%%~nfp"
            ren "%%f" "!filename:~0,-1!"
        )
    )
    echo 操作已完成！
    pause
    goto loop

:remove_extension_current
    echo 正在删除当前目录下非.bat和非.vbs文件的后缀名...
    for %%f in (*.*) do (
        if /i "%%~xf" neq ".bat" if /i "%%~xf" neq ".vbs" (
            set "filename=%%~nfp"
            ren "%%f" "!filename:~0,-1!"
        )
    )
    echo 操作已完成！
    pause
    goto loop

:end
endlocal