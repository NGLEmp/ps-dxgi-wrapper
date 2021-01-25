@echo off
set PS_VERSION=2021
set dest=%ProgramFiles%\Adobe\Adobe Photoshop %PS_VERSION%

del /f "%dest%\gpu.dll"
del /f "%dest%\gpu.ini"
del /f "%dest%\vcruntime140_1.dll"
del /f "%dest%\vcruntime_ldr.ini"
del /f "%dest%\d3d12on7.dll"
del /f "%dest%\d3d12onV.dll"
del /f "%dest%\dxilconv7.dll"
