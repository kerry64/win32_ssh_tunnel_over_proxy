# win32_ssh_tunnel_over_proxy
Win32 batch script to tunnel a port from SSH server over http or socks5 proxy in poor quality network.

README Chinese version available [中文版](https://github.com/kerry64/win32_ssh_tunnel_over_proxy/blob/main/README_CN.md)

You can edit the batch file.
```batch
: toolchain  [NO SPACE]
  set ssh=C:\Windows\System32\OpenSSH\ssh.exe
  set ncc="%~dp0connect.exe"  // this tool is proxy tool like nc in linux
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
  
  rem most parameters are optional. 
  rem the privkey is suggested to configure for passwordless auto-reconnect.
  ```
  
 And ssh command is in the batch file. But it is kinda a mess.
 
 It tunnels my ssh port to my localhost through proxy, so I can easily use Remote SSH in VS Code.
 
 This is especially good at tunnelling a foreign server especially in somewhere with great firewall.
 
