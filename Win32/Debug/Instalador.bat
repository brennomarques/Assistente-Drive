@echo off
title Assitente para instalacao de driver
cd %~dp0
cd Programas
mode 100,8
echo.
color 1f
echo.
@echo===============O driver esta sendo instalado, aguarde... ==========
echo.
echo  ������ 2%%
echo   CCleaner  (Limpeza do Sistema)
start /wait ccsetup522.exe /S
echo.
echo  ������������������ 20%%
echo  formatfactory-3-6-0-0 (Editor de Video)
start /wait formatfactory-3-6-0-0.exe /S
echo.
echo  ������������������������������������ 50%%
echo  media-player-classic-home-cinema (Play de video)
start /wait media-player-classic-home-cinema-1-7-10-32-bit.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo.
echo  ������������������������������������������������ 80%%
echo  photoscape-3-7 (Editor de video)
start /wait photoscape-3-7.exe /S
echo.
echo  �������������������������������������������������������� 90%% 
echo  vlc-media-player (Editor de video)
start /wait vlc-media-player-2-2-4.exe /S
echo  �������������������������������������������������������������� 100%%
pause>nul