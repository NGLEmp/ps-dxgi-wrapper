# DXGI wrapper for Photoshop

# Intro

In Photoshop 2021 Direct3D interface was updated to version 12 and some systems don't have support of [IDXGIFactory6](https://docs.microsoft.com/en-us/windows/win32/api/dxgi1_6/nn-dxgi1_6-idxgifactory6) interface and its methods.
[DXGI wrapper for Photoshop](https://github.com/NGLEmp/ps-dxgi-wrapper) is useful if you get "Could not complete your request because of a program error" message related to your videocard detection (Detected Graphics Processor: none).

![](img/error.png)

Target product: Adobe Photoshop 2021

## Before fix:

![](img/before.png)

## After fix:

![](img/after.png)

# Download

- [Releases](https://github.com/NGLEmp/ps-dxgi-wrapper/releases)

# Installation

1. Use `install.cmd` to install. Change `dest` path if needed.
2. Clear configuration folder: `%AppData%\Adobe\Adobe Photoshop 2021`

# Uninstallation

- Run `uninstall.cmd` to uninstall. Change `dest` path if needed.

# Congiguration

## vcruntime_ldr.ini

- Do not change anything in this file

## gpu.ini

### Primary parameters

| Option	| Values	| Comment	|
|-----		|------		|---------|
|d3d12		|		|Infterface used to initalize internal components
|		|auto		|Default
|		|d3d12on7	|Use DirectX 12 on Windows 7 (requires additional components)
|		|vulkan		|Use Vulkan API. Used for videocard info only.
|		|		|May be used on Wine and Windows 7, 8, 8.1. NOT TESTED.
|owlfix		|		|Fix bug in `adobeowl.dll` (white screen or crash at startup splash screen)
|		|auto		|Default, must be changed. Always verify manually before usage.
|		|true		|If fix is required
|		|false		|If fix is not required

# Windows Versions

## Windows 10

If Windows 10 version 1803 or newer is detected, then no wrapper required. Wrapper will be automatically disabled (internally).

Affected [Windows 10 editions](https://en.wikipedia.org/wiki/Windows_10_editions):

| Version	| Title	|
|----	|------|
|1507	|Initial release
|	|[LTSC 2015](https://docs.microsoft.com/en-us/windows/whats-new/ltsc/)
|1511	|November Update
|1607	|Anniversary Update
|	|LTSC 2016
|1703	|Creators Update
|1709	|Fall Creators Update

Including all builds between releases.


## Windows 7

Note: Photoshop 2021 was not designed for this operating system.

1. Install Microsoft Direct3D D3D12On7.
2. Comment `goto End` line [#18](install.cmd#L18) in `install.cmd` to install required libraries.
3. Install all components using `install.cmd`.

WARNING: NOT TESTED

## Windows 8 and 8.1

Note: Photoshop 2021 was not designed for this operating system.

1. Use `d3d12=vulkan` option in `gpu.ini`
2. Comment `goto End` line [#18](install.cmd#L18) in `install.cmd` to install required libraries.
3. Install all components using `install.cmd`.

WARNING: NOT TESTED

# Glossary

## DXGI

- Microsoft DirectX Graphics Infrastructure ([DXGI](https://docs.microsoft.com/en-us/windows/win32/direct3ddxgi/dx-graphics-dxgi)) handles enumerating graphics adapters, enumerating display modes, selecting buffer formats, sharing resources between processes (such as, between applications and the Desktop Window Manager (DWM)), and presenting rendered frames to a window or monitor for display.
- DXGI is used by Direct3D 10, Direct3D 11 and Direct3D 12.
- [DXGI 1.6 improvements](https://docs.microsoft.com/en-us/windows/win32/direct3ddxgi/dxgi-1-6-improvements) - what's new in Microsoft DirectX Graphics Infrastructure (DXGI) 1.6 for various releases of Windows 10.
