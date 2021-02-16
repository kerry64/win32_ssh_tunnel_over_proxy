# win32_ssh_tunnel_over_proxy
Win32下 通过代理连接SSH隧道的 批处理脚本，工作在网络环境较差的情况下。

你可以修改脚本来改变参数。
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
  ```
  
 在脚本的后面是ssh的命令，很乱，但我认为足够用了。
 
 本脚本通过本地的socks5/http代理连接ssh隧道，将ssh port映射到本地，以便VS Code连接。

 对网络极差的环境来说，本脚本是比较方便的。尤其是连接境外服务器时。
 
 另外还有其他玄妙用法，端口都过来了，那不就随便用了。
 
 但值得注意的是，SSH流量是非常不稳定的，他的特征格外明显。因此特殊用途本脚本并不适用。
 
 对于VSCode来说，这个隧道都容易时常断连。可能与作者本人网络环境格外差有关。
