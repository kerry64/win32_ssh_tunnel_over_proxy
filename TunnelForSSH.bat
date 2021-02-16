@echo off&setlocal

: toolchain  [NO SPACE]
  set ssh=C:\Windows\System32\OpenSSH\ssh.exe
  set ncc="%~dp0connect.exe"
:
: localhost
  set socks5=7890
  set   http=
  set   bind=6666
:
: remote
  set      ip=192.168.1.101
  set    sshp=443
  set    port=
  set    name=kerry
  set privkey="C:\Users\Kerry\Desktop\Server\ssh_key"
:
: ==============
: use windows ssh;  proxy optional; 
: privkey optional; toolchain allows no space
: script
title %~n0
set/p=listening port %bind%...<nul
:again
rem ssh tunnel works through %proxy%
rem local%bind% --above-- sshhost%port%
if "%sshp%"=="" set sshp=22
if "%port%"=="" set port=%sshp%
if "%bind%"=="" set bind=%port%
if "%name%"=="" set name=%username%
set __ncc_op=H
if "%http%"=="" if not "%socks5%"=="" set __ncc_op=S
set __ncc_p=%http%
if "%http%"=="" set __ncc_p=%socks5%
set __ssh_option=^
-o "ProxyCommand=%ncc% -%__ncc_op% 127.0.0.1:%__ncc_p% %%h %%p"
if "%socks5%"=="" if "%http%"=="" set __ssh_option=
set __key_op=-i
if "%privkey%"=="" set __key_op=

"%ssh:~%" -2 -L %bind%:127.0.0.1:%port% ^
-p %sshp% %name%@%ip% -NTnq %__ssh_option% ^
%__key_op% %privkey% -o ServerAliveCountMax=666 ^
-o TCPKeepAlive=yes -o ServerAliveInterval=666
:: -o ExitOnForwardFailure=yes -g
if not "%__newln%"=="1" (echo.&set/p=reconnecting..<nul)
set __newln=1
set/p=.<nul
goto:again