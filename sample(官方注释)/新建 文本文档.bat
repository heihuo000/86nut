::注释
::code1=ANSI(GB2312)
::code2=Big5
::code3=Shift_JIS
::code4=EUC-KR
::code5=UTF-8
::code6=Unicode
@echo off & setlocal enabledelayedexpansion
::设置文件转换前编码类型，请参考上面编码序号，序号5即指code5也就是UTF-8编码
set aaa=1
::设置文件转换后编码类型，请参考上面编码序号，序号1即指code1也就是ANSI(GB2312)编码
set bbb=5
::设置要转换的文件名
set file=%~nx1
set wfiles=%file%
::开始转换
echo !aaa!|findstr /be "[1-6]" >nul ||goto :eof
echo !bbb!|findstr /be "[1-6]" >nul ||goto :eof
if "!aaa!" == "!bbb!" goto :eof
echo>MakeBOM.vbs Set objFSO = CreateObject("Scripting.FileSystemObject")
echo>> MakeBOM.vbs Set objFile = objFSO.CreateTextFile("Unicode.BOM",,true)
cscript //Nologo MakeBOM.vbs
set codepth=编码转换后
md %codepth%\tmp
:loop
set vvv=!aaa!
if "!aaa!" == "6" set vvv=!bbb!
for /f "tokens=%vvv%" %%a in ("936 950 932 949 65001") do (reg add "HKCU\Console\%%SystemRoot%%_System32_cmd.exe" /v CodePage /t REG_DWORD /d %%a /f >nul)
if not "!aaa!" == "6" (
if not "!bbb!" == "6" (
start /wait /min cmd /u /c "for %%a in (%%wfiles%%) do copy Unicode.BOM tmpfile.tmp&type "%%~fa" >> tmpfile.tmp&move /y tmpfile.tmp %codepth%\tmp\"%%~nxa""
set aaa=6
set wfiles=%codepth%\tmp\*
goto loop
)
)
if "!bbb!" == "6" (
start /wait /min cmd /u /c "for %%a in (%%wfiles%%) do copy Unicode.BOM tmpfile.tmp&type "%%~fa" >> tmpfile.tmp&move /y tmpfile.tmp %codepth%\"%%~nxa""
) else (start /wait /min cmd /c "for %%a in (%%wfiles%%) do type "%%~fa" > %codepth%\"%%~nxa"")
reg delete "HKCU\Console\%%SystemRoot%%_System32_cmd.exe" /v CodePage /f >nul
del MakeBOM.vbs
del Unicode.BOM
move /y "%codepth%\%file%" "%file%"
rd /s /q "%codepth%"
pause