@echo off
set PS_VERSION=2021
set dest=%ProgramFiles%\Adobe\Adobe Photoshop %PS_VERSION%\

:: REQUIRED
:: Main worker
:Main
copy /b gpu.dll "%dest%"
copy /b gpu.ini "%dest%"

:: REQUIRED
:: VC Runtime Proxy
:VCRuntimeProxy
copy /b vcruntime140_1.dll
copy /b vcruntime_ldr.ini

:: Install only required components
goto End
rem goto d3d12onV

:: OPTIONAL
:: NOT TESTED
:: Wine, Windows 7 and 8.x support (videocard info only)
:d3d12on7
copy /b d3d12on7.dll
copy /b dxilconv7.dll
rem goto End

:: OPTIONAL
:: Vulkan Support (videocard info only)
:d3d12onV
copy /b d3d12onV.dll

:End
